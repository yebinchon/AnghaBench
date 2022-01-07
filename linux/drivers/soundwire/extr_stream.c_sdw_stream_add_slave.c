
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdw_stream_runtime {int state; int name; } ;
struct sdw_stream_config {int dummy; } ;
struct sdw_slave_runtime {int m_rt_node; } ;
struct sdw_slave {TYPE_1__* bus; int dev; } ;
struct sdw_port_config {int dummy; } ;
struct sdw_master_runtime {int slave_rt_list; } ;
struct TYPE_2__ {int bus_lock; } ;


 int ENOMEM ;
 int SDW_STREAM_CONFIGURED ;
 int dev_err (int *,char*,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sdw_master_runtime* sdw_alloc_master_rt (TYPE_1__*,struct sdw_stream_config*,struct sdw_stream_runtime*) ;
 struct sdw_slave_runtime* sdw_alloc_slave_rt (struct sdw_slave*,struct sdw_stream_config*,struct sdw_stream_runtime*) ;
 int sdw_config_stream (int *,struct sdw_stream_runtime*,struct sdw_stream_config*,int) ;
 int sdw_release_master_stream (struct sdw_master_runtime*,struct sdw_stream_runtime*) ;
 int sdw_slave_port_config (struct sdw_slave*,struct sdw_slave_runtime*,struct sdw_port_config*,unsigned int) ;

int sdw_stream_add_slave(struct sdw_slave *slave,
    struct sdw_stream_config *stream_config,
    struct sdw_port_config *port_config,
    unsigned int num_ports,
    struct sdw_stream_runtime *stream)
{
 struct sdw_slave_runtime *s_rt;
 struct sdw_master_runtime *m_rt;
 int ret;

 mutex_lock(&slave->bus->bus_lock);





 m_rt = sdw_alloc_master_rt(slave->bus, stream_config, stream);
 if (!m_rt) {
  dev_err(&slave->dev,
   "alloc master runtime failed for stream:%s\n",
   stream->name);
  ret = -ENOMEM;
  goto error;
 }

 s_rt = sdw_alloc_slave_rt(slave, stream_config, stream);
 if (!s_rt) {
  dev_err(&slave->dev,
   "Slave runtime config failed for stream:%s\n",
   stream->name);
  ret = -ENOMEM;
  goto stream_error;
 }

 ret = sdw_config_stream(&slave->dev, stream, stream_config, 1);
 if (ret)
  goto stream_error;

 list_add_tail(&s_rt->m_rt_node, &m_rt->slave_rt_list);

 ret = sdw_slave_port_config(slave, s_rt, port_config, num_ports);
 if (ret)
  goto stream_error;







 stream->state = SDW_STREAM_CONFIGURED;
 goto error;

stream_error:




 sdw_release_master_stream(m_rt, stream);
error:
 mutex_unlock(&slave->bus->bus_lock);
 return ret;
}

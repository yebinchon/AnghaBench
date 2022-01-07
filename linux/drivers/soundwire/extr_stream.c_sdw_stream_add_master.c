
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_stream_runtime {scalar_t__ m_rt_count; int name; } ;
struct sdw_stream_config {int dummy; } ;
struct sdw_port_config {int dummy; } ;
struct sdw_master_runtime {int dummy; } ;
struct sdw_bus {int bus_lock; int dev; int link_id; int multi_link; } ;


 int EINVAL ;
 int ENOMEM ;
 int dev_err (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sdw_master_runtime* sdw_alloc_master_rt (struct sdw_bus*,struct sdw_stream_config*,struct sdw_stream_runtime*) ;
 int sdw_config_stream (int ,struct sdw_stream_runtime*,struct sdw_stream_config*,int) ;
 int sdw_master_port_config (struct sdw_bus*,struct sdw_master_runtime*,struct sdw_port_config*,unsigned int) ;
 int sdw_release_master_stream (struct sdw_master_runtime*,struct sdw_stream_runtime*) ;

int sdw_stream_add_master(struct sdw_bus *bus,
     struct sdw_stream_config *stream_config,
     struct sdw_port_config *port_config,
     unsigned int num_ports,
     struct sdw_stream_runtime *stream)
{
 struct sdw_master_runtime *m_rt;
 int ret;

 mutex_lock(&bus->bus_lock);






 if (!bus->multi_link && stream->m_rt_count > 0) {
  dev_err(bus->dev,
   "Multilink not supported, link %d\n", bus->link_id);
  ret = -EINVAL;
  goto unlock;
 }

 m_rt = sdw_alloc_master_rt(bus, stream_config, stream);
 if (!m_rt) {
  dev_err(bus->dev,
   "Master runtime config failed for stream:%s\n",
   stream->name);
  ret = -ENOMEM;
  goto unlock;
 }

 ret = sdw_config_stream(bus->dev, stream, stream_config, 0);
 if (ret)
  goto stream_error;

 ret = sdw_master_port_config(bus, m_rt, port_config, num_ports);
 if (ret)
  goto stream_error;

 stream->m_rt_count++;

 goto unlock;

stream_error:
 sdw_release_master_stream(m_rt, stream);
unlock:
 mutex_unlock(&bus->bus_lock);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_stream_runtime {int master_list; } ;
struct sdw_stream_config {int direction; int ch_count; } ;
struct sdw_master_runtime {int direction; struct sdw_stream_runtime* stream; struct sdw_bus* bus; int ch_count; int bus_node; int stream_node; int slave_rt_list; int port_list; } ;
struct sdw_bus {int m_rt_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct sdw_master_runtime* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct sdw_master_runtime* sdw_find_master_rt (struct sdw_bus*,struct sdw_stream_runtime*) ;

__attribute__((used)) static struct sdw_master_runtime
*sdw_alloc_master_rt(struct sdw_bus *bus,
       struct sdw_stream_config *stream_config,
       struct sdw_stream_runtime *stream)
{
 struct sdw_master_runtime *m_rt;





 m_rt = sdw_find_master_rt(bus, stream);
 if (m_rt)
  goto stream_config;

 m_rt = kzalloc(sizeof(*m_rt), GFP_KERNEL);
 if (!m_rt)
  return ((void*)0);


 INIT_LIST_HEAD(&m_rt->port_list);
 INIT_LIST_HEAD(&m_rt->slave_rt_list);
 list_add_tail(&m_rt->stream_node, &stream->master_list);

 list_add_tail(&m_rt->bus_node, &bus->m_rt_list);

stream_config:
 m_rt->ch_count = stream_config->ch_count;
 m_rt->bus = bus;
 m_rt->stream = stream;
 m_rt->direction = stream_config->direction;

 return m_rt;
}

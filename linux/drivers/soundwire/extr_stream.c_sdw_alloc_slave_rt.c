
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_stream_runtime {int dummy; } ;
struct sdw_stream_config {int direction; int ch_count; } ;
struct sdw_slave_runtime {struct sdw_slave* slave; int direction; int ch_count; int port_list; } ;
struct sdw_slave {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct sdw_slave_runtime* kzalloc (int,int ) ;

__attribute__((used)) static struct sdw_slave_runtime
*sdw_alloc_slave_rt(struct sdw_slave *slave,
      struct sdw_stream_config *stream_config,
      struct sdw_stream_runtime *stream)
{
 struct sdw_slave_runtime *s_rt;

 s_rt = kzalloc(sizeof(*s_rt), GFP_KERNEL);
 if (!s_rt)
  return ((void*)0);

 INIT_LIST_HEAD(&s_rt->port_list);
 s_rt->ch_count = stream_config->ch_count;
 s_rt->direction = stream_config->direction;
 s_rt->slave = slave;

 return s_rt;
}

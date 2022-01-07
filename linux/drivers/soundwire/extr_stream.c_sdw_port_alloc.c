
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_port_runtime {int num; int ch_mask; } ;
struct sdw_port_config {int num; int ch_mask; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 struct sdw_port_runtime* kzalloc (int,int ) ;

__attribute__((used)) static struct sdw_port_runtime
*sdw_port_alloc(struct device *dev,
  struct sdw_port_config *port_config,
  int port_index)
{
 struct sdw_port_runtime *p_rt;

 p_rt = kzalloc(sizeof(*p_rt), GFP_KERNEL);
 if (!p_rt)
  return ((void*)0);

 p_rt->ch_mask = port_config[port_index].ch_mask;
 p_rt->num = port_config[port_index].num;

 return p_rt;
}

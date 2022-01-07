
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_slave_runtime {int port_list; } ;
struct sdw_slave {int dev; } ;
struct sdw_port_runtime {int port_node; } ;
struct sdw_port_config {int dummy; } ;


 int ENOMEM ;
 int kfree (struct sdw_port_runtime*) ;
 int list_add_tail (int *,int *) ;
 int sdw_is_valid_port_range (int *,struct sdw_port_runtime*) ;
 struct sdw_port_runtime* sdw_port_alloc (int *,struct sdw_port_config*,int) ;

__attribute__((used)) static int sdw_slave_port_config(struct sdw_slave *slave,
     struct sdw_slave_runtime *s_rt,
     struct sdw_port_config *port_config,
     unsigned int num_config)
{
 struct sdw_port_runtime *p_rt;
 int i, ret;


 for (i = 0; i < num_config; i++) {
  p_rt = sdw_port_alloc(&slave->dev, port_config, i);
  if (!p_rt)
   return -ENOMEM;





  ret = sdw_is_valid_port_range(&slave->dev, p_rt);
  if (ret < 0) {
   kfree(p_rt);
   return ret;
  }






  list_add_tail(&p_rt->port_node, &s_rt->port_list);
 }

 return 0;
}

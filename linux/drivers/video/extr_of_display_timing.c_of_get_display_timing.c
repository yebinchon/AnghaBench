
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display_timing {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 struct device_node* of_get_child_by_name (struct device_node const*,char const*) ;
 int of_node_put (struct device_node*) ;
 int of_parse_display_timing (struct device_node*,struct display_timing*) ;

int of_get_display_timing(const struct device_node *np, const char *name,
  struct display_timing *dt)
{
 struct device_node *timing_np;
 int ret;

 if (!np)
  return -EINVAL;

 timing_np = of_get_child_by_name(np, name);
 if (!timing_np)
  return -ENOENT;

 ret = of_parse_display_timing(timing_np, dt);

 of_node_put(timing_np);

 return ret;
}

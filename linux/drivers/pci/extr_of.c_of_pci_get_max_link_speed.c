
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int EINVAL ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;

int of_pci_get_max_link_speed(struct device_node *node)
{
 u32 max_link_speed;

 if (of_property_read_u32(node, "max-link-speed", &max_link_speed) ||
     max_link_speed > 4)
  return -EINVAL;

 return max_link_speed;
}

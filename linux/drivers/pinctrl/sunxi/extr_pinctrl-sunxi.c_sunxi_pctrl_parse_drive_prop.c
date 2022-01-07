
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int EINVAL ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int rounddown (int,int) ;

__attribute__((used)) static int sunxi_pctrl_parse_drive_prop(struct device_node *node)
{
 u32 val;


 if (!of_property_read_u32(node, "drive-strength", &val)) {

  if (val < 10)
   return -EINVAL;


  if (val > 40)
   val = 40;


  return rounddown(val, 10);
 }


 if (of_property_read_u32(node, "allwinner,drive", &val))
  return -EINVAL;

 return (val + 1) * 10;
}

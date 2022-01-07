
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device_node {int dummy; } ;


 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;

u32 dss_of_port_get_port_number(struct device_node *port)
{
 int r;
 u32 reg;

 r = of_property_read_u32(port, "reg", &reg);
 if (r)
  reg = 0;

 return reg;
}

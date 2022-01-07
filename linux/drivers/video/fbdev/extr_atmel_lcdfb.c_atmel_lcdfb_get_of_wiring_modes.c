
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int ATMEL_LCDC_WIRING_BGR ;
 int ENODEV ;
 int * atmel_lcdfb_wiring_modes ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int strcasecmp (char const*,int ) ;

__attribute__((used)) static int atmel_lcdfb_get_of_wiring_modes(struct device_node *np)
{
 const char *mode;
 int err, i;

 err = of_property_read_string(np, "atmel,lcd-wiring-mode", &mode);
 if (err < 0)
  return ATMEL_LCDC_WIRING_BGR;

 for (i = 0; i < ARRAY_SIZE(atmel_lcdfb_wiring_modes); i++)
  if (!strcasecmp(mode, atmel_lcdfb_wiring_modes[i]))
   return i;

 return -ENODEV;
}

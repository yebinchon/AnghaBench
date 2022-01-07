
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int CONFIG_CPU_BIG_ENDIAN ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ of_property_read_bool (struct device_node const*,char*) ;

bool of_device_is_big_endian(const struct device_node *device)
{
 if (of_property_read_bool(device, "big-endian"))
  return 1;
 if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN) &&
     of_property_read_bool(device, "native-endian"))
  return 1;
 return 0;
}

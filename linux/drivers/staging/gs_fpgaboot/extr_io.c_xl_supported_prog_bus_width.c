
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wbus { ____Placeholder_wbus } wbus ;




 int pr_err (char*,int) ;

int xl_supported_prog_bus_width(enum wbus bus_bytes)
{
 switch (bus_bytes) {
 case 129:
  break;
 case 128:
  break;
 default:
  pr_err("unsupported program bus width %d\n", bus_bytes);
  return 0;
 }

 return 1;
}

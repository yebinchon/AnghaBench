
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int system_state ;
 int xen_store_domain_type ;

__attribute__((used)) static bool xenbus_ok(void)
{
 switch (xen_store_domain_type) {
 case 129:
  switch (system_state) {
  case 132:
  case 131:
  case 133:
   return 0;
  default:
   break;
  }
  return 1;
 case 128:
 case 130:


  return 1;
 default:
  break;
 }
 return 0;
}

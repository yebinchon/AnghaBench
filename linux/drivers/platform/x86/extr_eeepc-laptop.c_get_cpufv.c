
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int dummy; } ;
struct eeepc_cpufv {int cur; int num; } ;


 int CM_ASL_CPUFV ;
 int ENODEV ;
 int get_acpi (struct eeepc_laptop*,int ) ;

__attribute__((used)) static int get_cpufv(struct eeepc_laptop *eeepc, struct eeepc_cpufv *c)
{
 c->cur = get_acpi(eeepc, CM_ASL_CPUFV);
 if (c->cur < 0)
  return -ENODEV;

 c->num = (c->cur >> 8) & 0xff;
 c->cur &= 0xff;
 if (c->num == 0 || c->num > 12)
  return -ENODEV;
 return 0;
}

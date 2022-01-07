
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rfkill_ops {int dummy; } ;
struct asus_rfkill {int control_id; int * rfkill; struct asus_laptop* asus; } ;
struct asus_laptop {TYPE_1__* platform_device; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int * rfkill_alloc (char const*,int *,int,struct rfkill_ops const*,struct asus_rfkill*) ;
 int rfkill_destroy (int *) ;
 int rfkill_register (int *) ;

__attribute__((used)) static int asus_rfkill_setup(struct asus_laptop *asus, struct asus_rfkill *rfk,
        const char *name, int control_id, int type,
        const struct rfkill_ops *ops)
{
 int result;

 rfk->control_id = control_id;
 rfk->asus = asus;
 rfk->rfkill = rfkill_alloc(name, &asus->platform_device->dev,
       type, ops, rfk);
 if (!rfk->rfkill)
  return -EINVAL;

 result = rfkill_register(rfk->rfkill);
 if (result) {
  rfkill_destroy(rfk->rfkill);
  rfk->rfkill = ((void*)0);
 }

 return result;
}

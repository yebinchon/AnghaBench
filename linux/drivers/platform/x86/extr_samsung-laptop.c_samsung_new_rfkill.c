
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_rfkill {int type; struct samsung_laptop* samsung; struct rfkill* rfkill; } ;
struct samsung_laptop {TYPE_1__* platform_device; } ;
struct rfkill_ops {int dummy; } ;
struct rfkill {int dummy; } ;
typedef enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 struct rfkill* rfkill_alloc (char const*,int *,int,struct rfkill_ops const*,struct samsung_rfkill*) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_init_sw_state (struct rfkill*,int) ;
 int rfkill_register (struct rfkill*) ;

__attribute__((used)) static int samsung_new_rfkill(struct samsung_laptop *samsung,
         struct samsung_rfkill *arfkill,
         const char *name, enum rfkill_type type,
         const struct rfkill_ops *ops,
         int blocked)
{
 struct rfkill **rfkill = &arfkill->rfkill;
 int ret;

 arfkill->type = type;
 arfkill->samsung = samsung;

 *rfkill = rfkill_alloc(name, &samsung->platform_device->dev,
          type, ops, arfkill);

 if (!*rfkill)
  return -EINVAL;

 if (blocked != -1)
  rfkill_init_sw_state(*rfkill, blocked);

 ret = rfkill_register(*rfkill);
 if (ret) {
  rfkill_destroy(*rfkill);
  *rfkill = ((void*)0);
  return ret;
 }
 return 0;
}

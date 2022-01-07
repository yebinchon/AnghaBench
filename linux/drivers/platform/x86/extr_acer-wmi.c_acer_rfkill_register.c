
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rfkill {int dummy; } ;
struct device {int dummy; } ;
typedef enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;
typedef int acpi_status ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ENOMEM ;
 struct rfkill* ERR_PTR (int) ;
 int acer_rfkill_ops ;
 int get_u32 (scalar_t__*,scalar_t__) ;
 struct rfkill* rfkill_alloc (char*,struct device*,int,int *,void*) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_register (struct rfkill*) ;
 int rfkill_set_sw_state (struct rfkill*,int) ;

__attribute__((used)) static struct rfkill *acer_rfkill_register(struct device *dev,
        enum rfkill_type type,
        char *name, u32 cap)
{
 int err;
 struct rfkill *rfkill_dev;
 u32 state;
 acpi_status status;

 rfkill_dev = rfkill_alloc(name, dev, type,
      &acer_rfkill_ops,
      (void *)(unsigned long)cap);
 if (!rfkill_dev)
  return ERR_PTR(-ENOMEM);

 status = get_u32(&state, cap);

 err = rfkill_register(rfkill_dev);
 if (err) {
  rfkill_destroy(rfkill_dev);
  return ERR_PTR(err);
 }

 if (ACPI_SUCCESS(status))
  rfkill_set_sw_state(rfkill_dev, !state);

 return rfkill_dev;
}

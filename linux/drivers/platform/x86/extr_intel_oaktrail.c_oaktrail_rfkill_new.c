
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u8 ;
struct rfkill {int dummy; } ;
typedef enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 struct rfkill* ERR_PTR (int) ;
 int OT_EC_DEVICE_STATE_ADDRESS ;
 int ec_read (int ,unsigned long*) ;
 TYPE_1__* oaktrail_device ;
 int oaktrail_rfkill_ops ;
 struct rfkill* rfkill_alloc (char*,int *,int,int *,void*) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_init_sw_state (struct rfkill*,int) ;
 int rfkill_register (struct rfkill*) ;

__attribute__((used)) static struct rfkill *oaktrail_rfkill_new(char *name, enum rfkill_type type,
       unsigned long mask)
{
 struct rfkill *rfkill_dev;
 u8 value;
 int err;

 rfkill_dev = rfkill_alloc(name, &oaktrail_device->dev, type,
      &oaktrail_rfkill_ops, (void *)mask);
 if (!rfkill_dev)
  return ERR_PTR(-ENOMEM);

 ec_read(OT_EC_DEVICE_STATE_ADDRESS, &value);
 rfkill_init_sw_state(rfkill_dev, (value & mask) != 1);

 err = rfkill_register(rfkill_dev);
 if (err) {
  rfkill_destroy(rfkill_dev);
  return ERR_PTR(err);
 }

 return rfkill_dev;
}

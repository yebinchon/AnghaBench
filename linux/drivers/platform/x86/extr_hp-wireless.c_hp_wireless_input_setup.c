
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bustype; } ;
struct TYPE_7__ {char* name; char* phys; int keybit; int * evbit; TYPE_1__ id; } ;


 int BIT (int ) ;
 int BUS_HOST ;
 int ENOMEM ;
 int EV_KEY ;
 int KEY_RFKILL ;
 TYPE_2__* hpwl_input_dev ;
 TYPE_2__* input_allocate_device () ;
 int input_free_device (TYPE_2__*) ;
 int input_register_device (TYPE_2__*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int hp_wireless_input_setup(void)
{
 int err;

 hpwl_input_dev = input_allocate_device();
 if (!hpwl_input_dev)
  return -ENOMEM;

 hpwl_input_dev->name = "HP Wireless hotkeys";
 hpwl_input_dev->phys = "hpq6001/input0";
 hpwl_input_dev->id.bustype = BUS_HOST;
 hpwl_input_dev->evbit[0] = BIT(EV_KEY);
 set_bit(KEY_RFKILL, hpwl_input_dev->keybit);

 err = input_register_device(hpwl_input_dev);
 if (err)
  goto err_free_dev;

 return 0;

err_free_dev:
 input_free_device(hpwl_input_dev);
 return err;
}

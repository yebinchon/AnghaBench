
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * parent; } ;
struct TYPE_7__ {int bustype; } ;
struct TYPE_9__ {char* name; char* phys; int keybit; int evbit; TYPE_2__ dev; TYPE_1__ id; } ;


 int BUS_VIRTUAL ;
 int ENOMEM ;
 int EV_KEY ;
 int KEY_DOWN ;
 int __set_bit (int ,int ) ;
 TYPE_3__* input_allocate_device () ;
 int input_free_device (TYPE_3__*) ;
 int input_register_device (TYPE_3__*) ;
 TYPE_3__* virt_keyboard ;

int speakup_add_virtual_keyboard(void)
{
 int err;

 virt_keyboard = input_allocate_device();

 if (!virt_keyboard)
  return -ENOMEM;

 virt_keyboard->name = "Speakup";
 virt_keyboard->id.bustype = BUS_VIRTUAL;
 virt_keyboard->phys = "speakup/input0";
 virt_keyboard->dev.parent = ((void*)0);

 __set_bit(EV_KEY, virt_keyboard->evbit);
 __set_bit(KEY_DOWN, virt_keyboard->keybit);

 err = input_register_device(virt_keyboard);
 if (err) {
  input_free_device(virt_keyboard);
  virt_keyboard = ((void*)0);
 }

 return err;
}

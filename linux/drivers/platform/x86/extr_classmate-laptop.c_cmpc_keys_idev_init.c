
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keybit; int evbit; } ;


 scalar_t__ EV_KEY ;
 scalar_t__ KEY_MAX ;
 scalar_t__* cmpc_keys_codes ;
 int set_bit (scalar_t__,int ) ;

__attribute__((used)) static void cmpc_keys_idev_init(struct input_dev *inputdev)
{
 int i;

 set_bit(EV_KEY, inputdev->evbit);
 for (i = 0; cmpc_keys_codes[i] != KEY_MAX; i++)
  set_bit(cmpc_keys_codes[i], inputdev->keybit);
}

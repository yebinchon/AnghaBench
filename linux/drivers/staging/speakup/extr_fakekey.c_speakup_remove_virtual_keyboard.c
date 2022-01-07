
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int input_unregister_device (int *) ;
 int * virt_keyboard ;

void speakup_remove_virtual_keyboard(void)
{
 if (virt_keyboard) {
  input_unregister_device(virt_keyboard);
  virt_keyboard = ((void*)0);
 }
}

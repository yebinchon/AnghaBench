
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sony_laptop_keypress {int dev; int key; int * member_0; } ;
typedef int kp ;
struct TYPE_2__ {int fifo; int * jog_dev; int * key_dev; int release_key_timer; int users; } ;


 int atomic_dec_and_test (int *) ;
 int del_timer_sync (int *) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int input_unregister_device (int *) ;
 int kfifo_free (int *) ;
 int kfifo_out (int *,unsigned char*,int) ;
 TYPE_1__ sony_laptop_input ;

__attribute__((used)) static void sony_laptop_remove_input(void)
{
 struct sony_laptop_keypress kp = { ((void*)0) };


 if (!atomic_dec_and_test(&sony_laptop_input.users))
  return;

 del_timer_sync(&sony_laptop_input.release_key_timer);





 while (kfifo_out(&sony_laptop_input.fifo,
    (unsigned char *)&kp, sizeof(kp)) == sizeof(kp)) {
  input_report_key(kp.dev, kp.key, 0);
  input_sync(kp.dev);
 }


 input_unregister_device(sony_laptop_input.key_dev);
 sony_laptop_input.key_dev = ((void*)0);

 if (sony_laptop_input.jog_dev) {
  input_unregister_device(sony_laptop_input.jog_dev);
  sony_laptop_input.jog_dev = ((void*)0);
 }

 kfifo_free(&sony_laptop_input.fifo);
}

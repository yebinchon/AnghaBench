
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sony_laptop_keypress {int dev; int key; } ;
typedef int kp ;
struct TYPE_2__ {int fifo_lock; int release_key_timer; int fifo; } ;


 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 scalar_t__ jiffies ;
 scalar_t__ kfifo_len (int *) ;
 int kfifo_out (int *,unsigned char*,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 TYPE_1__ sony_laptop_input ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void do_sony_laptop_release_key(struct timer_list *unused)
{
 struct sony_laptop_keypress kp;
 unsigned long flags;

 spin_lock_irqsave(&sony_laptop_input.fifo_lock, flags);

 if (kfifo_out(&sony_laptop_input.fifo,
        (unsigned char *)&kp, sizeof(kp)) == sizeof(kp)) {
  input_report_key(kp.dev, kp.key, 0);
  input_sync(kp.dev);
 }


 if (kfifo_len(&sony_laptop_input.fifo) != 0)
  mod_timer(&sony_laptop_input.release_key_timer,
     jiffies + msecs_to_jiffies(10));

 spin_unlock_irqrestore(&sony_laptop_input.fifo_lock, flags);
}

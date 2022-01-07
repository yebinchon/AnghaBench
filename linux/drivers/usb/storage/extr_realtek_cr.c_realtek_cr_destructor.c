
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rts51x_chip {int status; scalar_t__ timer_expires; int rts51x_suspend_timer; } ;


 int del_timer (int *) ;
 int kfree (int ) ;
 scalar_t__ ss_en ;

__attribute__((used)) static void realtek_cr_destructor(void *extra)
{
 struct rts51x_chip *chip = extra;

 if (!chip)
  return;







 kfree(chip->status);
}

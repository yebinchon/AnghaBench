
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int hal_tmo; } ;


 int BFA_TIMER_FREQ ;
 int bfad_bfa_tmo ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int timer_setup (int *,int ,int ) ;

void
bfad_init_timer(struct bfad_s *bfad)
{
 timer_setup(&bfad->hal_tmo, bfad_bfa_tmo, 0);

 mod_timer(&bfad->hal_tmo,
    jiffies + msecs_to_jiffies(BFA_TIMER_FREQ));
}

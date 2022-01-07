
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct AdapterControlBlock {TYPE_1__ refresh_timer; } ;


 int add_timer (TYPE_1__*) ;
 int arcmsr_set_iop_datetime ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int timer_setup (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void arcmsr_init_set_datetime_timer(struct AdapterControlBlock *pacb)
{
 timer_setup(&pacb->refresh_timer, arcmsr_set_iop_datetime, 0);
 pacb->refresh_timer.expires = jiffies + msecs_to_jiffies(60 * 1000);
 add_timer(&pacb->refresh_timer);
}

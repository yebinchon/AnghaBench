
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct AdapterControlBlock {TYPE_1__ eternal_timer; int fw_flag; int ante_token_value; int rq_map_token; int arcmsr_do_message_isr_bh; } ;


 int FW_NORMAL ;
 int HZ ;
 int INIT_WORK (int *,int ) ;
 int add_timer (TYPE_1__*) ;
 int arcmsr_message_isr_bh_fn ;
 int arcmsr_request_device_map ;
 int atomic_set (int *,int) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int timer_setup (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void arcmsr_init_get_devmap_timer(struct AdapterControlBlock *pacb)
{
 INIT_WORK(&pacb->arcmsr_do_message_isr_bh, arcmsr_message_isr_bh_fn);
 atomic_set(&pacb->rq_map_token, 16);
 atomic_set(&pacb->ante_token_value, 16);
 pacb->fw_flag = FW_NORMAL;
 timer_setup(&pacb->eternal_timer, arcmsr_request_device_map, 0);
 pacb->eternal_timer.expires = jiffies + msecs_to_jiffies(6 * HZ);
 add_timer(&pacb->eternal_timer);
}

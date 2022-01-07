
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct cardstate {int dev; } ;
struct bas_cardstate {struct cardstate* cs; } ;


 int BS_ATREADY ;
 int BS_ATTIMER ;
 int dev_warn (int ,char*) ;
 struct bas_cardstate* from_timer (int ,struct timer_list*,int ) ;
 int start_cbsend (struct cardstate*) ;
 int timer_atrdy ;
 struct bas_cardstate* ucs ;
 int update_basstate (struct bas_cardstate*,int ,int ) ;

__attribute__((used)) static void atrdy_timeout(struct timer_list *t)
{
 struct bas_cardstate *ucs = from_timer(ucs, t, timer_atrdy);
 struct cardstate *cs = ucs->cs;

 dev_warn(cs->dev, "timeout waiting for HD_READY_SEND_ATDATA\n");


 update_basstate(ucs, BS_ATREADY, BS_ATTIMER);
 start_cbsend(cs);
}

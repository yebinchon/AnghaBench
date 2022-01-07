
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int heartbeat; } ;
struct bfa_ioc_s {scalar_t__ hb_count; TYPE_1__ ioc_regs; } ;


 int bfa_hb_timer_start (struct bfa_ioc_s*) ;
 int bfa_ioc_mbox_poll (struct bfa_ioc_s*) ;
 int bfa_ioc_recover (struct bfa_ioc_s*) ;
 scalar_t__ readl (int ) ;

__attribute__((used)) static void
bfa_ioc_hb_check(void *cbarg)
{
 struct bfa_ioc_s *ioc = cbarg;
 u32 hb_count;

 hb_count = readl(ioc->ioc_regs.heartbeat);
 if (ioc->hb_count == hb_count) {
  bfa_ioc_recover(ioc);
  return;
 } else {
  ioc->hb_count = hb_count;
 }

 bfa_ioc_mbox_poll(ioc);
 bfa_hb_timer_start(ioc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int heartbeat; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; int hb_count; } ;


 int bfa_hb_timer_start (struct bfa_ioc_s*) ;
 int readl (int ) ;

__attribute__((used)) static void
bfa_ioc_hb_monitor(struct bfa_ioc_s *ioc)
{
 ioc->hb_count = readl(ioc->ioc_regs.heartbeat);
 bfa_hb_timer_start(ioc);
}

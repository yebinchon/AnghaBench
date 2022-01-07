
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct initio_host {scalar_t__ addr; TYPE_1__* active_tc; scalar_t__* msg; } ;
struct TYPE_2__ {int js_period; int sconfig0; int flags; } ;


 int TCF_SYNC_DONE ;
 int TCF_WDTR_DONE ;
 int TSC_ALT_PERIOD ;
 int TSC_WIDE_SCSI ;
 scalar_t__ TUL_SConfig ;
 scalar_t__ TUL_SPeriod ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int wdtr_done(struct initio_host * host)
{
 host->active_tc->flags &= ~TCF_SYNC_DONE;
 host->active_tc->flags |= TCF_WDTR_DONE;

 host->active_tc->js_period = 0;
 if (host->msg[2])
  host->active_tc->js_period |= TSC_WIDE_SCSI;
 host->active_tc->sconfig0 &= ~TSC_ALT_PERIOD;
 outb(host->active_tc->sconfig0, host->addr + TUL_SConfig);
 outb(host->active_tc->js_period, host->addr + TUL_SPeriod);

 return 1;
}

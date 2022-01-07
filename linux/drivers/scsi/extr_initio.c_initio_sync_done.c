
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct initio_host {int* msg; scalar_t__ addr; TYPE_1__* active_tc; } ;
struct TYPE_2__ {int js_period; int sconfig0; int flags; } ;


 int TCF_SYNC_DONE ;
 int TSC_ALT_PERIOD ;
 scalar_t__ TUL_SConfig ;
 scalar_t__ TUL_SPeriod ;
 int* initio_rate_tbl ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int initio_sync_done(struct initio_host * host)
{
 int i;

 host->active_tc->flags |= TCF_SYNC_DONE;

 if (host->msg[3]) {
  host->active_tc->js_period |= host->msg[3];
  for (i = 0; i < 8; i++) {
   if (initio_rate_tbl[i] >= host->msg[2])
    break;
  }
  host->active_tc->js_period |= (i << 4);
  host->active_tc->sconfig0 |= TSC_ALT_PERIOD;
 }
 outb(host->active_tc->sconfig0, host->addr + TUL_SConfig);
 outb(host->active_tc->js_period, host->addr + TUL_SPeriod);

 return -1;
}

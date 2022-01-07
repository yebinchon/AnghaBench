
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sent_xmit; scalar_t__ got_xmit_done; } ;
struct visornic_devdata {TYPE_1__ chstat; } ;


 unsigned long ULONG_MAX ;

__attribute__((used)) static unsigned long devdata_xmits_outstanding(struct visornic_devdata *devdata)
{
 if (devdata->chstat.sent_xmit >= devdata->chstat.got_xmit_done)
  return devdata->chstat.sent_xmit -
   devdata->chstat.got_xmit_done;
 return (ULONG_MAX - devdata->chstat.got_xmit_done
  + devdata->chstat.sent_xmit + 1);
}

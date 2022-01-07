
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc2_qh {scalar_t__ host_us; scalar_t__ device_us; scalar_t__ host_interval; scalar_t__ device_interval; int num_hs_transfers; TYPE_1__* hs_transfers; } ;
struct dwc2_hsotg {int dummy; } ;
struct TYPE_2__ {scalar_t__ duration_us; scalar_t__ start_schedule_us; } ;


 int WARN_ON (int) ;
 int dwc2_hs_pmap_schedule (struct dwc2_hsotg*,struct dwc2_qh*,int,int ) ;

__attribute__((used)) static int dwc2_uframe_schedule_hs(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{

 WARN_ON(qh->host_us != qh->device_us);
 WARN_ON(qh->host_interval != qh->device_interval);
 WARN_ON(qh->num_hs_transfers != 1);


 qh->hs_transfers[0].start_schedule_us = 0;
 qh->hs_transfers[0].duration_us = qh->host_us;

 return dwc2_hs_pmap_schedule(hsotg, qh, 0, 0);
}

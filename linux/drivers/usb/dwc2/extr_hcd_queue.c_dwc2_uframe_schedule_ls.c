
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_qh {scalar_t__ host_us; scalar_t__ device_us; scalar_t__ host_interval; scalar_t__ device_interval; int schedule_low_speed; } ;
struct dwc2_hsotg {int dummy; } ;


 int WARN_ON (int) ;
 int dwc2_ls_pmap_schedule (struct dwc2_hsotg*,struct dwc2_qh*,int ) ;

__attribute__((used)) static int dwc2_uframe_schedule_ls(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{

 WARN_ON(qh->host_us != qh->device_us);
 WARN_ON(qh->host_interval != qh->device_interval);
 WARN_ON(!qh->schedule_low_speed);


 return dwc2_ls_pmap_schedule(hsotg, qh, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ command; scalar_t__ versionnumber; scalar_t__ subcommand; } ;
struct mei_wdt_start_response {int wdstate; TYPE_1__ hdr; } ;
struct mei_wdt {scalar_t__ state; int response; int unregister; int cldev; } ;
struct mei_mc_hdr {int dummy; } ;
struct mei_cl_device {int dev; } ;
typedef int res ;


 scalar_t__ MEI_MANAGEMENT_CONTROL ;
 scalar_t__ MEI_MC_START_WD_TIMER_RES ;
 scalar_t__ MEI_MC_VERSION_NUMBER ;
 void* MEI_WDT_NOT_REQUIRED ;
 scalar_t__ MEI_WDT_PROBE ;
 scalar_t__ MEI_WDT_RUNNING ;
 int MEI_WDT_WDSTATE_NOT_REQUIRED ;
 int complete (int *) ;
 int completion_done (int *) ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*,scalar_t__,scalar_t__,...) ;
 struct mei_wdt* mei_cldev_get_drvdata (struct mei_cl_device*) ;
 int mei_cldev_recv (int ,int *,size_t const) ;
 int mei_wdt_register (struct mei_wdt*) ;
 int mei_wdt_state_str (scalar_t__) ;
 int mei_wdt_stop (struct mei_wdt*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void mei_wdt_rx(struct mei_cl_device *cldev)
{
 struct mei_wdt *wdt = mei_cldev_get_drvdata(cldev);
 struct mei_wdt_start_response res;
 const size_t res_len = sizeof(res);
 int ret;

 ret = mei_cldev_recv(wdt->cldev, (u8 *)&res, res_len);
 if (ret < 0) {
  dev_err(&cldev->dev, "failure in recv %d\n", ret);
  return;
 }


 if (ret == 0)
  return;

 if (ret < sizeof(struct mei_mc_hdr)) {
  dev_err(&cldev->dev, "recv small data %d\n", ret);
  return;
 }

 if (res.hdr.command != MEI_MANAGEMENT_CONTROL ||
     res.hdr.versionnumber != MEI_MC_VERSION_NUMBER) {
  dev_err(&cldev->dev, "wrong command received\n");
  return;
 }

 if (res.hdr.subcommand != MEI_MC_START_WD_TIMER_RES) {
  dev_warn(&cldev->dev, "unsupported command %d :%s[%d]\n",
    res.hdr.subcommand,
    mei_wdt_state_str(wdt->state),
    wdt->state);
  return;
 }





 if (wdt->state == MEI_WDT_RUNNING) {
  if (res.wdstate & MEI_WDT_WDSTATE_NOT_REQUIRED) {
   wdt->state = MEI_WDT_NOT_REQUIRED;
   schedule_work(&wdt->unregister);
  }
  goto out;
 }

 if (wdt->state == MEI_WDT_PROBE) {
  if (res.wdstate & MEI_WDT_WDSTATE_NOT_REQUIRED) {
   wdt->state = MEI_WDT_NOT_REQUIRED;
  } else {

   mei_wdt_stop(wdt);
   mei_wdt_register(wdt);
  }
  return;
 }

 dev_warn(&cldev->dev, "not in correct state %s[%d]\n",
    mei_wdt_state_str(wdt->state), wdt->state);

out:
 if (!completion_done(&wdt->response))
  complete(&wdt->response);
}

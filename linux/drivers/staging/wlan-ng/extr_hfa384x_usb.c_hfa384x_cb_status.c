
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmdresp; } ;
struct hfa384x_usbctlx {scalar_t__ state; int usercb_data; int (* usercb ) (struct hfa384x*,struct hfa384x_cmdresult*,int ) ;TYPE_1__ inbuf; } ;
struct hfa384x_cmdresult {int status; } ;
struct hfa384x {int dummy; } ;
typedef int cmdresult ;


 scalar_t__ CTLX_COMPLETE ;
 int HFA384x_CMD_ERR ;
 int HFA384x_STATUS_RESULT_SET (int ) ;
 int memset (struct hfa384x_cmdresult*,int ,int) ;
 int stub1 (struct hfa384x*,struct hfa384x_cmdresult*,int ) ;
 int usbctlx_get_status (int *,struct hfa384x_cmdresult*) ;

__attribute__((used)) static void hfa384x_cb_status(struct hfa384x *hw,
         const struct hfa384x_usbctlx *ctlx)
{
 if (ctlx->usercb) {
  struct hfa384x_cmdresult cmdresult;

  if (ctlx->state != CTLX_COMPLETE) {
   memset(&cmdresult, 0, sizeof(cmdresult));
   cmdresult.status =
       HFA384x_STATUS_RESULT_SET(HFA384x_CMD_ERR);
  } else {
   usbctlx_get_status(&ctlx->inbuf.cmdresp, &cmdresult);
  }

  ctlx->usercb(hw, &cmdresult, ctlx->usercb_data);
 }
}

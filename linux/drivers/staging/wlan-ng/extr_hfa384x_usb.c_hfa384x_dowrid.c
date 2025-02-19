
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct usbctlx_cmd_completor {int dummy; } ;
struct TYPE_6__ {int wridresp; } ;
struct TYPE_4__ {int data; void* rid; void* frmlen; void* type; } ;
struct TYPE_5__ {TYPE_1__ wridreq; } ;
struct hfa384x_usbctlx {int outbufsize; int reapable; TYPE_3__ inbuf; void* usercb_data; int usercb; int cmdcb; TYPE_2__ outbuf; } ;
struct hfa384x_cmdresult {int dummy; } ;
struct hfa384x {int dummy; } ;
typedef enum cmd_mode { ____Placeholder_cmd_mode } cmd_mode ;
typedef int ctlx_usercb_t ;
typedef int ctlx_cmdcb_t ;


 int DOWAIT ;
 int ENOMEM ;
 int HFA384x_USB_WRIDREQ ;
 void* cpu_to_le16 (int) ;
 int hfa384x_usbctlx_complete_sync (struct hfa384x*,struct hfa384x_usbctlx*,int ) ;
 int hfa384x_usbctlx_submit (struct hfa384x*,struct hfa384x_usbctlx*) ;
 int init_wrid_completor (struct usbctlx_cmd_completor*,int *,struct hfa384x_cmdresult*) ;
 int kfree (struct hfa384x_usbctlx*) ;
 int memcpy (int ,void*,unsigned int) ;
 struct hfa384x_usbctlx* usbctlx_alloc () ;

__attribute__((used)) static int
hfa384x_dowrid(struct hfa384x *hw,
        enum cmd_mode mode,
        u16 rid,
        void *riddata,
        unsigned int riddatalen,
        ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
{
 int result;
 struct hfa384x_usbctlx *ctlx;

 ctlx = usbctlx_alloc();
 if (!ctlx) {
  result = -ENOMEM;
  goto done;
 }


 ctlx->outbuf.wridreq.type = cpu_to_le16(HFA384x_USB_WRIDREQ);
 ctlx->outbuf.wridreq.frmlen = cpu_to_le16((sizeof
         (ctlx->outbuf.wridreq.rid) +
         riddatalen + 1) / 2);
 ctlx->outbuf.wridreq.rid = cpu_to_le16(rid);
 memcpy(ctlx->outbuf.wridreq.data, riddata, riddatalen);

 ctlx->outbufsize = sizeof(ctlx->outbuf.wridreq.type) +
     sizeof(ctlx->outbuf.wridreq.frmlen) +
     sizeof(ctlx->outbuf.wridreq.rid) + riddatalen;

 ctlx->reapable = mode;
 ctlx->cmdcb = cmdcb;
 ctlx->usercb = usercb;
 ctlx->usercb_data = usercb_data;


 result = hfa384x_usbctlx_submit(hw, ctlx);
 if (result != 0) {
  kfree(ctlx);
 } else if (mode == DOWAIT) {
  struct usbctlx_cmd_completor completor;
  struct hfa384x_cmdresult wridresult;

  result = hfa384x_usbctlx_complete_sync(hw,
             ctlx,
             init_wrid_completor
             (&completor,
       &ctlx->inbuf.wridresp,
       &wridresult));
 }

done:
 return result;
}

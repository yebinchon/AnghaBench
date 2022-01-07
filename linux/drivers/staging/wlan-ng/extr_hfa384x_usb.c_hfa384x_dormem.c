
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct usbctlx_rmem_completor {int dummy; } ;
struct TYPE_6__ {int rmemresp; } ;
struct TYPE_4__ {void* page; void* offset; void* frmlen; void* type; } ;
struct TYPE_5__ {TYPE_1__ rmemreq; } ;
struct hfa384x_usbctlx {int outbufsize; TYPE_3__ inbuf; int * usercb_data; int * usercb; int * cmdcb; int reapable; TYPE_2__ outbuf; } ;
struct hfa384x {int dummy; } ;


 int DOWAIT ;
 int ENOMEM ;
 int HFA384x_USB_RMEMREQ ;
 int ROUNDUP64 (int) ;
 void* cpu_to_le16 (int) ;
 int hfa384x_usbctlx_complete_sync (struct hfa384x*,struct hfa384x_usbctlx*,int ) ;
 int hfa384x_usbctlx_submit (struct hfa384x*,struct hfa384x_usbctlx*) ;
 int init_rmem_completor (struct usbctlx_rmem_completor*,int *,void*,unsigned int) ;
 int kfree (struct hfa384x_usbctlx*) ;
 int pr_debug (char*,int ,...) ;
 struct hfa384x_usbctlx* usbctlx_alloc () ;

__attribute__((used)) static int
hfa384x_dormem(struct hfa384x *hw,
        u16 page,
        u16 offset,
        void *data,
        unsigned int len)
{
 int result;
 struct hfa384x_usbctlx *ctlx;

 ctlx = usbctlx_alloc();
 if (!ctlx) {
  result = -ENOMEM;
  goto done;
 }


 ctlx->outbuf.rmemreq.type = cpu_to_le16(HFA384x_USB_RMEMREQ);
 ctlx->outbuf.rmemreq.frmlen =
     cpu_to_le16(sizeof(ctlx->outbuf.rmemreq.offset) +
   sizeof(ctlx->outbuf.rmemreq.page) + len);
 ctlx->outbuf.rmemreq.offset = cpu_to_le16(offset);
 ctlx->outbuf.rmemreq.page = cpu_to_le16(page);

 ctlx->outbufsize = sizeof(ctlx->outbuf.rmemreq);

 pr_debug("type=0x%04x frmlen=%d offset=0x%04x page=0x%04x\n",
   ctlx->outbuf.rmemreq.type,
   ctlx->outbuf.rmemreq.frmlen,
   ctlx->outbuf.rmemreq.offset, ctlx->outbuf.rmemreq.page);

 pr_debug("pktsize=%zd\n", ROUNDUP64(sizeof(ctlx->outbuf.rmemreq)));

 ctlx->reapable = DOWAIT;
 ctlx->cmdcb = ((void*)0);
 ctlx->usercb = ((void*)0);
 ctlx->usercb_data = ((void*)0);

 result = hfa384x_usbctlx_submit(hw, ctlx);
 if (result != 0) {
  kfree(ctlx);
 } else {
  struct usbctlx_rmem_completor completor;

  result =
      hfa384x_usbctlx_complete_sync(hw, ctlx,
        init_rmem_completor
        (&completor,
         &ctlx->inbuf.rmemresp, data,
         len));
 }

done:
 return result;
}

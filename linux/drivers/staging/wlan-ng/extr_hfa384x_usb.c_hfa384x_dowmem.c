
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct usbctlx_cmd_completor {int dummy; } ;
struct TYPE_6__ {int wmemresp; } ;
struct TYPE_4__ {int data; void* page; void* offset; void* frmlen; void* type; } ;
struct TYPE_5__ {TYPE_1__ wmemreq; } ;
struct hfa384x_usbctlx {int outbufsize; TYPE_3__ inbuf; int * usercb_data; int * usercb; int * cmdcb; int reapable; TYPE_2__ outbuf; } ;
struct hfa384x_cmdresult {int dummy; } ;
struct hfa384x {int dummy; } ;


 int DOWAIT ;
 int ENOMEM ;
 int HFA384x_USB_WMEMREQ ;
 void* cpu_to_le16 (int) ;
 int hfa384x_usbctlx_complete_sync (struct hfa384x*,struct hfa384x_usbctlx*,int ) ;
 int hfa384x_usbctlx_submit (struct hfa384x*,struct hfa384x_usbctlx*) ;
 int init_wmem_completor (struct usbctlx_cmd_completor*,int *,struct hfa384x_cmdresult*) ;
 int kfree (struct hfa384x_usbctlx*) ;
 int memcpy (int ,void*,unsigned int) ;
 int pr_debug (char*,int,int,unsigned int) ;
 struct hfa384x_usbctlx* usbctlx_alloc () ;

__attribute__((used)) static int
hfa384x_dowmem(struct hfa384x *hw,
        u16 page,
        u16 offset,
        void *data,
        unsigned int len)
{
 int result;
 struct hfa384x_usbctlx *ctlx;

 pr_debug("page=0x%04x offset=0x%04x len=%d\n", page, offset, len);

 ctlx = usbctlx_alloc();
 if (!ctlx) {
  result = -ENOMEM;
  goto done;
 }


 ctlx->outbuf.wmemreq.type = cpu_to_le16(HFA384x_USB_WMEMREQ);
 ctlx->outbuf.wmemreq.frmlen =
     cpu_to_le16(sizeof(ctlx->outbuf.wmemreq.offset) +
   sizeof(ctlx->outbuf.wmemreq.page) + len);
 ctlx->outbuf.wmemreq.offset = cpu_to_le16(offset);
 ctlx->outbuf.wmemreq.page = cpu_to_le16(page);
 memcpy(ctlx->outbuf.wmemreq.data, data, len);

 ctlx->outbufsize = sizeof(ctlx->outbuf.wmemreq.type) +
     sizeof(ctlx->outbuf.wmemreq.frmlen) +
     sizeof(ctlx->outbuf.wmemreq.offset) +
     sizeof(ctlx->outbuf.wmemreq.page) + len;

 ctlx->reapable = DOWAIT;
 ctlx->cmdcb = ((void*)0);
 ctlx->usercb = ((void*)0);
 ctlx->usercb_data = ((void*)0);

 result = hfa384x_usbctlx_submit(hw, ctlx);
 if (result != 0) {
  kfree(ctlx);
 } else {
  struct usbctlx_cmd_completor completor;
  struct hfa384x_cmdresult wmemresult;

  result = hfa384x_usbctlx_complete_sync(hw,
             ctlx,
             init_wmem_completor
             (&completor,
       &ctlx->inbuf.wmemresp,
       &wmemresult));
 }

done:
 return result;
}

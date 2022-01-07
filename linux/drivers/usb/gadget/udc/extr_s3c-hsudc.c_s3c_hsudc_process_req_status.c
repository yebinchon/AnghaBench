
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct usb_ctrlrequest {int bRequestType; int wIndex; } ;
struct TYPE_2__ {int length; int * complete; scalar_t__ actual; int * buf; } ;
struct s3c_hsudc_req {TYPE_1__ req; int queue; } ;
struct s3c_hsudc_ep {int stopped; } ;
struct s3c_hsudc {struct s3c_hsudc_ep* ep; } ;
typedef int __le16 ;


 int INIT_LIST_HEAD (int *) ;
 size_t USB_ENDPOINT_NUMBER_MASK ;



 int USB_RECIP_MASK ;
 int cpu_to_le16 (int) ;
 size_t le16_to_cpu (int ) ;
 int s3c_hsudc_write_fifo (struct s3c_hsudc_ep*,struct s3c_hsudc_req*) ;

__attribute__((used)) static void s3c_hsudc_process_req_status(struct s3c_hsudc *hsudc,
     struct usb_ctrlrequest *ctrl)
{
 struct s3c_hsudc_ep *hsep0 = &hsudc->ep[0];
 struct s3c_hsudc_req hsreq;
 struct s3c_hsudc_ep *hsep;
 __le16 reply;
 u8 epnum;

 switch (ctrl->bRequestType & USB_RECIP_MASK) {
 case 130:
  reply = cpu_to_le16(0);
  break;

 case 128:
  reply = cpu_to_le16(0);
  break;

 case 129:
  epnum = le16_to_cpu(ctrl->wIndex) & USB_ENDPOINT_NUMBER_MASK;
  hsep = &hsudc->ep[epnum];
  reply = cpu_to_le16(hsep->stopped ? 1 : 0);
  break;
 }

 INIT_LIST_HEAD(&hsreq.queue);
 hsreq.req.length = 2;
 hsreq.req.buf = &reply;
 hsreq.req.actual = 0;
 hsreq.req.complete = ((void*)0);
 s3c_hsudc_write_fifo(hsep0, &hsreq);
}

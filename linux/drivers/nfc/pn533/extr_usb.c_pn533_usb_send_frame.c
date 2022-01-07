
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct pn533_usb_phy {TYPE_1__* out_urb; struct pn533* priv; } ;
struct pn533 {scalar_t__ protocol_type; struct pn533_usb_phy* phy; } ;
struct TYPE_3__ {int transfer_buffer_length; int transfer_buffer; } ;


 int DUMP_PREFIX_NONE ;
 int GFP_KERNEL ;
 scalar_t__ PN533_PROTO_REQ_ACK_RESP ;
 scalar_t__ PN533_PROTO_REQ_RESP ;
 int pn533_submit_urb_for_ack (struct pn533_usb_phy*,int ) ;
 int pn533_submit_urb_for_response (struct pn533_usb_phy*,int ) ;
 int print_hex_dump_debug (char*,int ,int,int,int ,int ,int) ;
 int usb_submit_urb (TYPE_1__*,int ) ;
 int usb_unlink_urb (TYPE_1__*) ;

__attribute__((used)) static int pn533_usb_send_frame(struct pn533 *dev,
    struct sk_buff *out)
{
 struct pn533_usb_phy *phy = dev->phy;
 int rc;

 if (phy->priv == ((void*)0))
  phy->priv = dev;

 phy->out_urb->transfer_buffer = out->data;
 phy->out_urb->transfer_buffer_length = out->len;

 print_hex_dump_debug("PN533 TX: ", DUMP_PREFIX_NONE, 16, 1,
        out->data, out->len, 0);

 rc = usb_submit_urb(phy->out_urb, GFP_KERNEL);
 if (rc)
  return rc;

 if (dev->protocol_type == PN533_PROTO_REQ_RESP) {

  rc = pn533_submit_urb_for_response(phy, GFP_KERNEL);
  if (rc)
   goto error;
 } else if (dev->protocol_type == PN533_PROTO_REQ_ACK_RESP) {

  rc = pn533_submit_urb_for_ack(phy, GFP_KERNEL);
  if (rc)
   goto error;
 }

 return 0;

error:
 usb_unlink_urb(phy->out_urb);
 return rc;
}

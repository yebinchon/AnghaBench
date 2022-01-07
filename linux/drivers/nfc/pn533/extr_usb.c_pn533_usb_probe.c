
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_8__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {int driver_info; } ;
struct pn533_usb_phy {unsigned char* ack_buffer; TYPE_3__* udev; void* ack_urb; void* out_urb; void* in_urb; struct pn533* priv; struct usb_interface* interface; } ;
struct pn533_frame_ops {int dummy; } ;
struct pn533 {int dummy; } ;
typedef enum pn533_protocol_type { ____Placeholder_pn533_protocol_type } pn533_protocol_type ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {struct usb_endpoint_descriptor desc; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct pn533*) ;
 int PN533_ALL_PROTOCOLS ;



 int PN533_EXT_FRAME_HEADER_LEN ;
 int PN533_NO_TYPE_B_PROTOCOLS ;
 int PN533_PROTO_REQ_ACK_RESP ;
 int PN533_PROTO_REQ_RESP ;
 int PN533_STD_FRAME_MAX_PAYLOAD_LEN ;
 int PN533_STD_FRAME_TAIL_LEN ;
 int PTR_ERR (struct pn533*) ;
 struct pn533_usb_phy* devm_kzalloc (int *,int,int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int nfc_err (int *,char*,...) ;
 struct pn533_frame_ops pn533_acr122_frame_ops ;
 int pn533_acr122_poweron_rdr (struct pn533_usb_phy*) ;
 int pn533_finalize_setup (struct pn533*) ;
 struct pn533* pn533_register_device (int,int ,int,struct pn533_usb_phy*,int *,struct pn533_frame_ops*,int *,int *) ;
 int * pn533_send_complete ;
 int pn533_unregister_device (struct pn533*) ;
 void* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 int usb_fill_bulk_urb (void*,TYPE_3__*,int ,unsigned char*,int,int *,struct pn533_usb_phy*) ;
 int usb_free_urb (void*) ;
 TYPE_3__* usb_get_dev (int ) ;
 int usb_kill_urb (void*) ;
 int usb_phy_ops ;
 int usb_put_dev (TYPE_3__*) ;
 int usb_rcvbulkpipe (TYPE_3__*,int) ;
 int usb_set_intfdata (struct usb_interface*,struct pn533_usb_phy*) ;
 int usb_sndbulkpipe (TYPE_3__*,int) ;

__attribute__((used)) static int pn533_usb_probe(struct usb_interface *interface,
   const struct usb_device_id *id)
{
 struct pn533 *priv;
 struct pn533_usb_phy *phy;
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 int in_endpoint = 0;
 int out_endpoint = 0;
 int rc = -ENOMEM;
 int i;
 u32 protocols;
 enum pn533_protocol_type protocol_type = PN533_PROTO_REQ_ACK_RESP;
 struct pn533_frame_ops *fops = ((void*)0);
 unsigned char *in_buf;
 int in_buf_len = PN533_EXT_FRAME_HEADER_LEN +
    PN533_STD_FRAME_MAX_PAYLOAD_LEN +
    PN533_STD_FRAME_TAIL_LEN;

 phy = devm_kzalloc(&interface->dev, sizeof(*phy), GFP_KERNEL);
 if (!phy)
  return -ENOMEM;

 in_buf = kzalloc(in_buf_len, GFP_KERNEL);
 if (!in_buf)
  return -ENOMEM;

 phy->udev = usb_get_dev(interface_to_usbdev(interface));
 phy->interface = interface;

 iface_desc = interface->cur_altsetting;
 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;

  if (!in_endpoint && usb_endpoint_is_bulk_in(endpoint))
   in_endpoint = endpoint->bEndpointAddress;

  if (!out_endpoint && usb_endpoint_is_bulk_out(endpoint))
   out_endpoint = endpoint->bEndpointAddress;
 }

 if (!in_endpoint || !out_endpoint) {
  nfc_err(&interface->dev,
   "Could not find bulk-in or bulk-out endpoint\n");
  rc = -ENODEV;
  goto error;
 }

 phy->in_urb = usb_alloc_urb(0, GFP_KERNEL);
 phy->out_urb = usb_alloc_urb(0, GFP_KERNEL);
 phy->ack_urb = usb_alloc_urb(0, GFP_KERNEL);

 if (!phy->in_urb || !phy->out_urb || !phy->ack_urb)
  goto error;

 usb_fill_bulk_urb(phy->in_urb, phy->udev,
     usb_rcvbulkpipe(phy->udev, in_endpoint),
     in_buf, in_buf_len, ((void*)0), phy);

 usb_fill_bulk_urb(phy->out_urb, phy->udev,
     usb_sndbulkpipe(phy->udev, out_endpoint),
     ((void*)0), 0, pn533_send_complete, phy);
 usb_fill_bulk_urb(phy->ack_urb, phy->udev,
     usb_sndbulkpipe(phy->udev, out_endpoint),
     ((void*)0), 0, pn533_send_complete, phy);

 switch (id->driver_info) {
 case 128:
  protocols = PN533_ALL_PROTOCOLS;
  break;

 case 129:
  protocols = PN533_NO_TYPE_B_PROTOCOLS;
  break;

 case 130:
  protocols = PN533_NO_TYPE_B_PROTOCOLS;
  fops = &pn533_acr122_frame_ops;
  protocol_type = PN533_PROTO_REQ_RESP,

  rc = pn533_acr122_poweron_rdr(phy);
  if (rc < 0) {
   nfc_err(&interface->dev,
    "Couldn't poweron the reader (error %d)\n", rc);
   goto error;
  }
  break;

 default:
  nfc_err(&interface->dev, "Unknown device type %lu\n",
   id->driver_info);
  rc = -EINVAL;
  goto error;
 }

 priv = pn533_register_device(id->driver_info, protocols, protocol_type,
     phy, &usb_phy_ops, fops,
     &phy->udev->dev, &interface->dev);

 if (IS_ERR(priv)) {
  rc = PTR_ERR(priv);
  goto error;
 }

 phy->priv = priv;

 rc = pn533_finalize_setup(priv);
 if (rc)
  goto err_deregister;

 usb_set_intfdata(interface, phy);

 return 0;

err_deregister:
 pn533_unregister_device(phy->priv);
error:
 usb_kill_urb(phy->in_urb);
 usb_kill_urb(phy->out_urb);
 usb_kill_urb(phy->ack_urb);

 usb_free_urb(phy->in_urb);
 usb_free_urb(phy->out_urb);
 usb_free_urb(phy->ack_urb);
 usb_put_dev(phy->udev);
 kfree(in_buf);
 kfree(phy->ack_buffer);

 return rc;
}

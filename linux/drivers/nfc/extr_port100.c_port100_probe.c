
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct port100 {int udev; TYPE_3__* out_urb; TYPE_3__* in_urb; int nfc_digital_dev; int skb_tailroom; scalar_t__ skb_headroom; int cmd_type; int cmd_complete_work; int cmd_cancel_done; struct usb_interface* interface; int out_urb_lock; } ;
struct TYPE_7__ {int transfer_flags; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int PORT100_CAPABILITIES ;
 int PORT100_CMD_TYPE_0 ;
 int PORT100_CMD_TYPE_1 ;
 scalar_t__ PORT100_CMD_TYPE_IS_SUPPORTED (int ,int ) ;
 scalar_t__ PORT100_COMM_RF_HEAD_MAX_LEN ;
 scalar_t__ PORT100_FRAME_HEADER_LEN ;
 int PORT100_FRAME_TAIL_LEN ;
 int PORT100_PROTOCOLS ;
 int URB_ZERO_PACKET ;
 struct port100* devm_kzalloc (int *,int,int ) ;
 int init_completion (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int mutex_init (int *) ;
 int nfc_digital_allocate_device (int *,int ,int ,scalar_t__,int ) ;
 int nfc_digital_free_device (int ) ;
 int nfc_digital_register_device (int ) ;
 int nfc_digital_set_drvdata (int ,struct port100*) ;
 int nfc_digital_set_parent_dev (int ,int *) ;
 int nfc_err (int *,char*,...) ;
 int nfc_info (int *,char*,int,int) ;
 int port100_digital_ops ;
 int port100_get_command_type_mask (struct port100*) ;
 int port100_get_firmware_version (struct port100*) ;
 int * port100_send_complete ;
 int port100_set_command_type (struct port100*,int ) ;
 int port100_wq_cmd_complete ;
 void* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 int usb_fill_bulk_urb (TYPE_3__*,int ,int ,int *,int ,int *,struct port100*) ;
 int usb_free_urb (TYPE_3__*) ;
 int usb_get_dev (int ) ;
 int usb_put_dev (int ) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_set_intfdata (struct usb_interface*,struct port100*) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int port100_probe(struct usb_interface *interface,
    const struct usb_device_id *id)
{
 struct port100 *dev;
 int rc;
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 int in_endpoint;
 int out_endpoint;
 u16 fw_version;
 u64 cmd_type_mask;
 int i;

 dev = devm_kzalloc(&interface->dev, sizeof(struct port100), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 mutex_init(&dev->out_urb_lock);
 dev->udev = usb_get_dev(interface_to_usbdev(interface));
 dev->interface = interface;
 usb_set_intfdata(interface, dev);

 in_endpoint = out_endpoint = 0;
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

 dev->in_urb = usb_alloc_urb(0, GFP_KERNEL);
 dev->out_urb = usb_alloc_urb(0, GFP_KERNEL);

 if (!dev->in_urb || !dev->out_urb) {
  nfc_err(&interface->dev, "Could not allocate USB URBs\n");
  rc = -ENOMEM;
  goto error;
 }

 usb_fill_bulk_urb(dev->in_urb, dev->udev,
     usb_rcvbulkpipe(dev->udev, in_endpoint),
     ((void*)0), 0, ((void*)0), dev);
 usb_fill_bulk_urb(dev->out_urb, dev->udev,
     usb_sndbulkpipe(dev->udev, out_endpoint),
     ((void*)0), 0, port100_send_complete, dev);
 dev->out_urb->transfer_flags = URB_ZERO_PACKET;

 dev->skb_headroom = PORT100_FRAME_HEADER_LEN +
       PORT100_COMM_RF_HEAD_MAX_LEN;
 dev->skb_tailroom = PORT100_FRAME_TAIL_LEN;

 init_completion(&dev->cmd_cancel_done);
 INIT_WORK(&dev->cmd_complete_work, port100_wq_cmd_complete);




 cmd_type_mask = port100_get_command_type_mask(dev);
 if (!cmd_type_mask) {
  nfc_err(&interface->dev,
   "Could not get supported command types\n");
  rc = -ENODEV;
  goto error;
 }

 if (PORT100_CMD_TYPE_IS_SUPPORTED(cmd_type_mask, PORT100_CMD_TYPE_1))
  dev->cmd_type = PORT100_CMD_TYPE_1;
 else
  dev->cmd_type = PORT100_CMD_TYPE_0;

 rc = port100_set_command_type(dev, dev->cmd_type);
 if (rc) {
  nfc_err(&interface->dev,
   "The device does not support command type %u\n",
   dev->cmd_type);
  goto error;
 }

 fw_version = port100_get_firmware_version(dev);
 if (!fw_version)
  nfc_err(&interface->dev,
   "Could not get device firmware version\n");

 nfc_info(&interface->dev,
   "Sony NFC Port-100 Series attached (firmware v%x.%02x)\n",
   (fw_version & 0xFF00) >> 8, fw_version & 0xFF);

 dev->nfc_digital_dev = nfc_digital_allocate_device(&port100_digital_ops,
          PORT100_PROTOCOLS,
          PORT100_CAPABILITIES,
          dev->skb_headroom,
          dev->skb_tailroom);
 if (!dev->nfc_digital_dev) {
  nfc_err(&interface->dev,
   "Could not allocate nfc_digital_dev\n");
  rc = -ENOMEM;
  goto error;
 }

 nfc_digital_set_parent_dev(dev->nfc_digital_dev, &interface->dev);
 nfc_digital_set_drvdata(dev->nfc_digital_dev, dev);

 rc = nfc_digital_register_device(dev->nfc_digital_dev);
 if (rc) {
  nfc_err(&interface->dev,
   "Could not register digital device\n");
  goto free_nfc_dev;
 }

 return 0;

free_nfc_dev:
 nfc_digital_free_device(dev->nfc_digital_dev);

error:
 usb_free_urb(dev->in_urb);
 usb_free_urb(dev->out_urb);
 usb_put_dev(dev->udev);

 return rc;
}

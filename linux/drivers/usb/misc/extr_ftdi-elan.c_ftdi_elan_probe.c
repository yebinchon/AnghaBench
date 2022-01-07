
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int minor; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_ftdi {int expected; int bulk_in_endpointAddr; int bulk_out_endpointAddr; TYPE_2__* udev; int respond_work; int command_work; int status_work; int * class; int bulk_in_buffer; int bulk_in_size; int u132_lock; struct usb_interface* interface; int sw_lock; scalar_t__ sequence_num; int ftdi_list; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int ftdi_elan_command_work ;
 int ftdi_elan_init_kref (struct usb_ftdi*) ;
 int ftdi_elan_jtag_class ;
 int ftdi_elan_put_kref (struct usb_ftdi*) ;
 int ftdi_elan_respond_work ;
 int ftdi_elan_status_work ;
 scalar_t__ ftdi_instances ;
 int ftdi_module_lock ;
 int ftdi_static_list ;
 int ftdi_status_queue_work (struct usb_ftdi*,int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kmalloc (int ,int ) ;
 struct usb_ftdi* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int msecs_to_jiffies (int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sema_init (int *,int) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_find_common_endpoints (struct usb_host_interface*,struct usb_endpoint_descriptor**,struct usb_endpoint_descriptor**,int *,int *) ;
 TYPE_2__* usb_get_dev (int ) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_ftdi*) ;

__attribute__((used)) static int ftdi_elan_probe(struct usb_interface *interface,
      const struct usb_device_id *id)
{
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *bulk_in, *bulk_out;
 int retval;
 struct usb_ftdi *ftdi;

 ftdi = kzalloc(sizeof(struct usb_ftdi), GFP_KERNEL);
 if (!ftdi)
  return -ENOMEM;

 mutex_lock(&ftdi_module_lock);
 list_add_tail(&ftdi->ftdi_list, &ftdi_static_list);
 ftdi->sequence_num = ++ftdi_instances;
 mutex_unlock(&ftdi_module_lock);
 ftdi_elan_init_kref(ftdi);
 sema_init(&ftdi->sw_lock, 1);
 ftdi->udev = usb_get_dev(interface_to_usbdev(interface));
 ftdi->interface = interface;
 mutex_init(&ftdi->u132_lock);
 ftdi->expected = 4;

 iface_desc = interface->cur_altsetting;
 retval = usb_find_common_endpoints(iface_desc,
   &bulk_in, &bulk_out, ((void*)0), ((void*)0));
 if (retval) {
  dev_err(&ftdi->udev->dev, "Could not find both bulk-in and bulk-out endpoints\n");
  goto error;
 }

 ftdi->bulk_in_size = usb_endpoint_maxp(bulk_in);
 ftdi->bulk_in_endpointAddr = bulk_in->bEndpointAddress;
 ftdi->bulk_in_buffer = kmalloc(ftdi->bulk_in_size, GFP_KERNEL);
 if (!ftdi->bulk_in_buffer) {
  retval = -ENOMEM;
  goto error;
 }

 ftdi->bulk_out_endpointAddr = bulk_out->bEndpointAddress;

 dev_info(&ftdi->udev->dev, "interface %d has I=%02X O=%02X\n",
   iface_desc->desc.bInterfaceNumber, ftdi->bulk_in_endpointAddr,
   ftdi->bulk_out_endpointAddr);
 usb_set_intfdata(interface, ftdi);
 if (iface_desc->desc.bInterfaceNumber == 0 &&
     ftdi->bulk_in_endpointAddr == 0x81 &&
     ftdi->bulk_out_endpointAddr == 0x02) {
  retval = usb_register_dev(interface, &ftdi_elan_jtag_class);
  if (retval) {
   dev_err(&ftdi->udev->dev, "Not able to get a minor for this device\n");
   usb_set_intfdata(interface, ((void*)0));
   retval = -ENOMEM;
   goto error;
  } else {
   ftdi->class = &ftdi_elan_jtag_class;
   dev_info(&ftdi->udev->dev, "USB FDTI=%p JTAG interface %d now attached to ftdi%d\n",
     ftdi, iface_desc->desc.bInterfaceNumber,
     interface->minor);
   return 0;
  }
 } else if (iface_desc->desc.bInterfaceNumber == 1 &&
     ftdi->bulk_in_endpointAddr == 0x83 &&
     ftdi->bulk_out_endpointAddr == 0x04) {
  ftdi->class = ((void*)0);
  dev_info(&ftdi->udev->dev, "USB FDTI=%p ELAN interface %d now activated\n",
    ftdi, iface_desc->desc.bInterfaceNumber);
  INIT_DELAYED_WORK(&ftdi->status_work, ftdi_elan_status_work);
  INIT_DELAYED_WORK(&ftdi->command_work, ftdi_elan_command_work);
  INIT_DELAYED_WORK(&ftdi->respond_work, ftdi_elan_respond_work);
  ftdi_status_queue_work(ftdi, msecs_to_jiffies(3 *1000));
  return 0;
 } else {
  dev_err(&ftdi->udev->dev,
   "Could not find ELAN's U132 device\n");
  retval = -ENODEV;
  goto error;
 }
error:if (ftdi) {
  ftdi_elan_put_kref(ftdi);
 }
 return retval;
}

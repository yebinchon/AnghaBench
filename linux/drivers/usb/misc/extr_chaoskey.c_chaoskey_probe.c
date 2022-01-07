
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_4__ {int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; scalar_t__ serial; scalar_t__ product; } ;
struct TYPE_5__ {int quality; int read; int * name; } ;
struct chaoskey {int in_ep; int reads_started; int size; int present; int hwrng_registered; TYPE_2__ hwrng; int * name; int rng_lock; int lock; int wait_q; int * buf; int urb; int interface; } ;
struct TYPE_6__ {int * name; } ;


 scalar_t__ ALEA_VENDOR_ID ;
 int CHAOSKEY_BUF_LEN ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int chaos_read_callback ;
 int chaoskey_class ;
 TYPE_3__ chaoskey_driver ;
 int chaoskey_free (struct chaoskey*) ;
 int chaoskey_rng_read ;
 scalar_t__ hwrng_register (TYPE_2__*) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int * kasprintf (int ,char*,scalar_t__,scalar_t__) ;
 int * kmalloc (int,int ) ;
 struct chaoskey* kzalloc (int,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mutex_init (int *) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_dbg (struct usb_interface*,char*,...) ;
 int usb_enable_autosuspend (struct usb_device*) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 int usb_err (struct usb_interface*,char*) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,int ,int *,int,int ,struct chaoskey*) ;
 int usb_find_bulk_in_endpoint (struct usb_host_interface*,struct usb_endpoint_descriptor**) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct chaoskey*) ;

__attribute__((used)) static int chaoskey_probe(struct usb_interface *interface,
     const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct usb_host_interface *altsetting = interface->cur_altsetting;
 struct usb_endpoint_descriptor *epd;
 int in_ep;
 struct chaoskey *dev;
 int result = -ENOMEM;
 int size;
 int res;

 usb_dbg(interface, "probe %s-%s", udev->product, udev->serial);


 res = usb_find_bulk_in_endpoint(altsetting, &epd);
 if (res) {
  usb_dbg(interface, "no IN endpoint found");
  return res;
 }

 in_ep = usb_endpoint_num(epd);
 size = usb_endpoint_maxp(epd);


 if (size <= 0) {
  usb_dbg(interface, "invalid size (%d)", size);
  return -ENODEV;
 }

 if (size > CHAOSKEY_BUF_LEN) {
  usb_dbg(interface, "size reduced from %d to %d\n",
   size, CHAOSKEY_BUF_LEN);
  size = CHAOSKEY_BUF_LEN;
 }



 dev = kzalloc(sizeof(struct chaoskey), GFP_KERNEL);

 if (dev == ((void*)0))
  goto out;

 dev->interface = usb_get_intf(interface);

 dev->buf = kmalloc(size, GFP_KERNEL);

 if (dev->buf == ((void*)0))
  goto out;

 dev->urb = usb_alloc_urb(0, GFP_KERNEL);

 if (!dev->urb)
  goto out;

 usb_fill_bulk_urb(dev->urb,
  udev,
  usb_rcvbulkpipe(udev, in_ep),
  dev->buf,
  size,
  chaos_read_callback,
  dev);





 if (udev->product && udev->serial) {
  dev->name = kasprintf(GFP_KERNEL, "%s-%s", udev->product,
          udev->serial);
  if (dev->name == ((void*)0))
   goto out;
 }

 dev->in_ep = in_ep;

 if (le16_to_cpu(udev->descriptor.idVendor) != ALEA_VENDOR_ID)
  dev->reads_started = 1;

 dev->size = size;
 dev->present = 1;

 init_waitqueue_head(&dev->wait_q);

 mutex_init(&dev->lock);
 mutex_init(&dev->rng_lock);

 usb_set_intfdata(interface, dev);

 result = usb_register_dev(interface, &chaoskey_class);
 if (result) {
  usb_err(interface, "Unable to allocate minor number.");
  goto out;
 }

 dev->hwrng.name = dev->name ? dev->name : chaoskey_driver.name;
 dev->hwrng.read = chaoskey_rng_read;
 dev->hwrng.quality = 1024;

 dev->hwrng_registered = (hwrng_register(&dev->hwrng) == 0);
 if (!dev->hwrng_registered)
  usb_err(interface, "Unable to register with hwrng");

 usb_enable_autosuspend(udev);

 usb_dbg(interface, "chaoskey probe success, size %d", dev->size);
 return 0;

out:
 usb_set_intfdata(interface, ((void*)0));
 chaoskey_free(dev);
 return result;
}

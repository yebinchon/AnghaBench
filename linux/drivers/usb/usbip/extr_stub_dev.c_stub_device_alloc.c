
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_device {int devnum; int dev; TYPE_1__* bus; } ;
struct TYPE_5__ {int unusable; int reset; int shutdown; } ;
struct TYPE_6__ {int sockfd; TYPE_2__ eh_ops; int * tcp_socket; int lock; int status; int side; } ;
struct stub_device {int devid; TYPE_3__ ud; int tx_waitq; int priv_lock; int unlink_tx; int unlink_free; int priv_free; int priv_tx; int priv_init; int udev; } ;
struct TYPE_4__ {int busnum; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SDEV_ST_AVAILABLE ;
 int USBIP_STUB ;
 int dev_dbg (int *,char*) ;
 int init_waitqueue_head (int *) ;
 struct stub_device* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int stub_device_reset ;
 int stub_device_unusable ;
 int stub_shutdown_connection ;
 int usb_get_dev (struct usb_device*) ;
 int usbip_start_eh (TYPE_3__*) ;

__attribute__((used)) static struct stub_device *stub_device_alloc(struct usb_device *udev)
{
 struct stub_device *sdev;
 int busnum = udev->bus->busnum;
 int devnum = udev->devnum;

 dev_dbg(&udev->dev, "allocating stub device");


 sdev = kzalloc(sizeof(struct stub_device), GFP_KERNEL);
 if (!sdev)
  return ((void*)0);

 sdev->udev = usb_get_dev(udev);






 sdev->devid = (busnum << 16) | devnum;
 sdev->ud.side = USBIP_STUB;
 sdev->ud.status = SDEV_ST_AVAILABLE;
 spin_lock_init(&sdev->ud.lock);
 sdev->ud.tcp_socket = ((void*)0);
 sdev->ud.sockfd = -1;

 INIT_LIST_HEAD(&sdev->priv_init);
 INIT_LIST_HEAD(&sdev->priv_tx);
 INIT_LIST_HEAD(&sdev->priv_free);
 INIT_LIST_HEAD(&sdev->unlink_free);
 INIT_LIST_HEAD(&sdev->unlink_tx);
 spin_lock_init(&sdev->priv_lock);

 init_waitqueue_head(&sdev->tx_waitq);

 sdev->ud.eh_ops.shutdown = stub_shutdown_connection;
 sdev->ud.eh_ops.reset = stub_device_reset;
 sdev->ud.eh_ops.unusable = stub_device_unusable;

 usbip_start_eh(&sdev->ud);

 dev_dbg(&udev->dev, "register new device\n");

 return sdev;
}

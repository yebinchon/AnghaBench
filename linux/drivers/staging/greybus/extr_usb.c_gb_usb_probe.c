
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int has_tt; } ;
struct gbphy_device_id {int dummy; } ;
struct device {int dummy; } ;
struct gbphy_device {TYPE_1__* cport_desc; int bundle; struct device dev; } ;
struct gb_usb_device {struct gbphy_device* gbphy_dev; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int ENOMEM ;
 int EPROTONOSUPPORT ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*) ;
 struct gb_connection* gb_connection_create (int ,int ,int *) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct gb_usb_device*) ;
 int gb_gbphy_set_data (struct gbphy_device*,struct gb_usb_device*) ;
 int le16_to_cpu (int ) ;
 struct gb_usb_device* to_gb_usb_device (struct usb_hcd*) ;
 int usb_add_hcd (struct usb_hcd*,int ,int ) ;
 struct usb_hcd* usb_create_hcd (int *,struct device*,int ) ;
 int usb_gb_hc_driver ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int gb_usb_probe(struct gbphy_device *gbphy_dev,
   const struct gbphy_device_id *id)
{
 struct gb_connection *connection;
 struct device *dev = &gbphy_dev->dev;
 struct gb_usb_device *gb_usb_dev;
 struct usb_hcd *hcd;
 int retval;

 hcd = usb_create_hcd(&usb_gb_hc_driver, dev, dev_name(dev));
 if (!hcd)
  return -ENOMEM;

 connection = gb_connection_create(gbphy_dev->bundle,
       le16_to_cpu(gbphy_dev->cport_desc->id),
       ((void*)0));
 if (IS_ERR(connection)) {
  retval = PTR_ERR(connection);
  goto exit_usb_put;
 }

 gb_usb_dev = to_gb_usb_device(hcd);
 gb_usb_dev->connection = connection;
 gb_connection_set_data(connection, gb_usb_dev);
 gb_usb_dev->gbphy_dev = gbphy_dev;
 gb_gbphy_set_data(gbphy_dev, gb_usb_dev);

 hcd->has_tt = 1;

 retval = gb_connection_enable(connection);
 if (retval)
  goto exit_connection_destroy;







 if (1) {
  dev_warn(dev, "USB protocol disabled\n");
  retval = -EPROTONOSUPPORT;
  goto exit_connection_disable;
 }

 retval = usb_add_hcd(hcd, 0, 0);
 if (retval)
  goto exit_connection_disable;

 return 0;

exit_connection_disable:
 gb_connection_disable(connection);
exit_connection_destroy:
 gb_connection_destroy(connection);
exit_usb_put:
 usb_put_hcd(hcd);

 return retval;
}

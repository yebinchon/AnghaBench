
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_pd_identity {int product; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct usb_pd_identity* get_pd_identity (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t product_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct usb_pd_identity *id = get_pd_identity(dev);

 return sprintf(buf, "0x%08x\n", id->product);
}

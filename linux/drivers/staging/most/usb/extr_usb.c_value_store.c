
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_device {int dummy; } ;
struct most_dci_obj {int reg_addr; struct usb_device* usb_device; } ;
struct TYPE_2__ {char* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EFAULT ;
 int drci_wr_reg (struct usb_device*,int ,int ) ;
 int get_static_reg_addr (int ,char const*,int *) ;
 int kstrtou16 (char const*,int,int *) ;
 int rw_regs ;
 int start_sync_ep (struct usb_device*,int ) ;
 int strcmp (char const*,char*) ;
 struct most_dci_obj* to_dci_obj (struct device*) ;

__attribute__((used)) static ssize_t value_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 u16 val;
 u16 reg_addr;
 const char *name = attr->attr.name;
 struct most_dci_obj *dci_obj = to_dci_obj(dev);
 struct usb_device *usb_dev = dci_obj->usb_device;
 int err = kstrtou16(buf, 16, &val);

 if (err)
  return err;

 if (!strcmp(name, "arb_address")) {
  dci_obj->reg_addr = val;
  return count;
 }

 if (!strcmp(name, "arb_value"))
  err = drci_wr_reg(usb_dev, dci_obj->reg_addr, val);
 else if (!strcmp(name, "sync_ep"))
  err = start_sync_ep(usb_dev, val);
 else if (!get_static_reg_addr(rw_regs, name, &reg_addr))
  err = drci_wr_reg(usb_dev, reg_addr, val);
 else
  return -EFAULT;

 if (err < 0)
  return err;

 return count;
}

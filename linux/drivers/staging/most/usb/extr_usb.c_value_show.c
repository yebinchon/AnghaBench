
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct most_dci_obj {int reg_addr; int usb_device; } ;
struct TYPE_2__ {char* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EFAULT ;
 int PAGE_SIZE ;
 int drci_rd_reg (int ,int,int*) ;
 scalar_t__ get_static_reg_addr (int ,char const*,int*) ;
 int ro_regs ;
 int rw_regs ;
 int snprintf (char*,int ,char*,int) ;
 int strcmp (char const*,char*) ;
 struct most_dci_obj* to_dci_obj (struct device*) ;

__attribute__((used)) static ssize_t value_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 const char *name = attr->attr.name;
 struct most_dci_obj *dci_obj = to_dci_obj(dev);
 u16 val;
 u16 reg_addr;
 int err;

 if (!strcmp(name, "arb_address"))
  return snprintf(buf, PAGE_SIZE, "%04x\n", dci_obj->reg_addr);

 if (!strcmp(name, "arb_value"))
  reg_addr = dci_obj->reg_addr;
 else if (get_static_reg_addr(ro_regs, name, &reg_addr) &&
   get_static_reg_addr(rw_regs, name, &reg_addr))
  return -EFAULT;

 err = drci_rd_reg(dci_obj->usb_device, reg_addr, &val);
 if (err < 0)
  return err;

 return snprintf(buf, PAGE_SIZE, "%04x\n", val);
}

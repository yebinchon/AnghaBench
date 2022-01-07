
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_mac_addr {int data; } ;
struct TYPE_2__ {struct uwb_mac_addr mac_addr; int dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_dev {struct uwb_rc* rc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINVAL ;
 int dev_err (int *,char*,char const*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int mac_pton (char const*,int ) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;
 scalar_t__ uwb_rc_mac_addr_set (struct uwb_rc*,struct uwb_mac_addr*) ;

__attribute__((used)) static ssize_t uwb_rc_mac_addr_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t size)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 struct uwb_rc *rc = uwb_dev->rc;
 struct uwb_mac_addr addr;
 ssize_t result;

 if (!mac_pton(buf, addr.data))
  return -EINVAL;
 if (is_multicast_ether_addr(addr.data)) {
  dev_err(&rc->uwb_dev.dev, "refusing to set multicast "
   "MAC address %s\n", buf);
  return -EINVAL;
 }
 result = uwb_rc_mac_addr_set(rc, &addr);
 if (result == 0)
  rc->uwb_dev.mac_addr = addr;

 return result < 0 ? result : size;
}

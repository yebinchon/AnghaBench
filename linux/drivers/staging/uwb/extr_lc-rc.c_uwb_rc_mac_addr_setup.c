
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_mac_addr {int* data; } ;
struct device {int dummy; } ;
struct uwb_dev {struct uwb_mac_addr mac_addr; struct device dev; } ;
struct uwb_rc {struct uwb_dev uwb_dev; } ;
typedef int devname ;


 int UWB_ADDR_STRSIZE ;
 int dev_err (struct device*,char*,...) ;
 int get_random_bytes (int*,int) ;
 scalar_t__ uwb_mac_addr_bcast (struct uwb_mac_addr*) ;
 int uwb_mac_addr_print (char*,int,struct uwb_mac_addr*) ;
 scalar_t__ uwb_mac_addr_unset (struct uwb_mac_addr*) ;
 int uwb_rc_mac_addr_get (struct uwb_rc*,struct uwb_mac_addr*) ;
 int uwb_rc_mac_addr_set (struct uwb_rc*,struct uwb_mac_addr*) ;

__attribute__((used)) static
int uwb_rc_mac_addr_setup(struct uwb_rc *rc)
{
 int result;
 struct device *dev = &rc->uwb_dev.dev;
 struct uwb_dev *uwb_dev = &rc->uwb_dev;
 char devname[UWB_ADDR_STRSIZE];
 struct uwb_mac_addr addr;

 result = uwb_rc_mac_addr_get(rc, &addr);
 if (result < 0) {
  dev_err(dev, "cannot retrieve UWB EUI-48 address: %d\n", result);
  return result;
 }

 if (uwb_mac_addr_unset(&addr) || uwb_mac_addr_bcast(&addr)) {
  addr.data[0] = 0x02;
  get_random_bytes(&addr.data[1], sizeof(addr.data)-1);

  result = uwb_rc_mac_addr_set(rc, &addr);
  if (result < 0) {
   uwb_mac_addr_print(devname, sizeof(devname), &addr);
   dev_err(dev, "cannot set EUI-48 address %s: %d\n",
    devname, result);
   return result;
  }
 }
 uwb_dev->mac_addr = addr;
 return 0;
}

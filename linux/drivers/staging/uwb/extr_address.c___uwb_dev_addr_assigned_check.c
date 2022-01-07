
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev_addr {int dummy; } ;
struct uwb_dev {int dev_addr; } ;
struct device {int dummy; } ;


 struct uwb_dev* to_uwb_dev (struct device*) ;
 int uwb_dev_addr_cmp (struct uwb_dev_addr*,int *) ;

int __uwb_dev_addr_assigned_check(struct device *dev, void *_addr)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 struct uwb_dev_addr *addr = _addr;
 if (!uwb_dev_addr_cmp(addr, &uwb_dev->dev_addr))
  return !0;
 return 0;
}

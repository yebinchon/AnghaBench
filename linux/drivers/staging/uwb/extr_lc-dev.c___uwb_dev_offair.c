
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dev; } ;
struct uwb_rc {TYPE_2__ uwb_dev; } ;
struct device {TYPE_1__* bus; } ;
struct uwb_dev {TYPE_3__* bce; struct device dev; int dev_addr; int mac_addr; } ;
typedef int macbuf ;
typedef int devbuf ;
struct TYPE_6__ {int node; } ;
struct TYPE_4__ {int name; } ;


 int UWB_ADDR_STRSIZE ;
 int dev_info (struct device*,char*,char*,char*,int ,char*) ;
 char* dev_name (int *) ;
 int list_del (int *) ;
 int uwb_bce_put (TYPE_3__*) ;
 int uwb_dev_addr_print (char*,int,int *) ;
 int uwb_dev_put (struct uwb_dev*) ;
 int uwb_dev_rm (struct uwb_dev*) ;
 int uwb_mac_addr_print (char*,int,int *) ;

int __uwb_dev_offair(struct uwb_dev *uwb_dev, struct uwb_rc *rc)
{
 struct device *dev = &uwb_dev->dev;
 char macbuf[UWB_ADDR_STRSIZE], devbuf[UWB_ADDR_STRSIZE];

 uwb_mac_addr_print(macbuf, sizeof(macbuf), &uwb_dev->mac_addr);
 uwb_dev_addr_print(devbuf, sizeof(devbuf), &uwb_dev->dev_addr);
 dev_info(dev, "uwb device (mac %s dev %s) disconnected from %s %s\n",
   macbuf, devbuf,
   uwb_dev->dev.bus->name,
   rc ? dev_name(&(rc->uwb_dev.dev)) : "");
 uwb_dev_rm(uwb_dev);
 list_del(&uwb_dev->bce->node);
 uwb_bce_put(uwb_dev->bce);
 uwb_dev_put(uwb_dev);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ coreid; } ;
struct ssb_device {TYPE_1__ id; } ;


 scalar_t__ SSB_DEV_USB20_HOST ;
 int ssb_hcd_5354wa (struct ssb_device*) ;
 int ssb_read32 (struct ssb_device*,int) ;
 int ssb_write32 (struct ssb_device*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void ssb_hcd_usb20wa(struct ssb_device *dev)
{
 if (dev->id.coreid == SSB_DEV_USB20_HOST) {







  ssb_write32(dev, 0x200, 0x7ff);


  ssb_write32(dev, 0x400, ssb_read32(dev, 0x400) & ~8);
  ssb_read32(dev, 0x400);


  ssb_write32(dev, 0x304, ssb_read32(dev, 0x304) & ~0x100);
  ssb_read32(dev, 0x304);

  udelay(1);

  ssb_hcd_5354wa(dev);
 }
}

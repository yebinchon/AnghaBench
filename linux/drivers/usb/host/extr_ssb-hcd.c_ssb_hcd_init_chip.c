
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ coreid; } ;
struct ssb_device {TYPE_1__ id; } ;


 scalar_t__ SSB_DEV_USB11_HOSTDEV ;
 int SSB_HCD_TMSLOW_HOSTMODE ;
 int ssb_device_enable (struct ssb_device*,int ) ;
 int ssb_hcd_usb20wa (struct ssb_device*) ;

__attribute__((used)) static u32 ssb_hcd_init_chip(struct ssb_device *dev)
{
 u32 flags = 0;

 if (dev->id.coreid == SSB_DEV_USB11_HOSTDEV)

  flags |= SSB_HCD_TMSLOW_HOSTMODE;

 ssb_device_enable(dev, flags);

 ssb_hcd_usb20wa(dev);

 return flags;
}

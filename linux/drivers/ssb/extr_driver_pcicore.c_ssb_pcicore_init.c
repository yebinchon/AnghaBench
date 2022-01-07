
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_pcicore {scalar_t__ hostmode; struct ssb_device* dev; } ;
struct ssb_device {int dummy; } ;


 scalar_t__ pcicore_is_in_hostmode (struct ssb_pcicore*) ;
 int ssb_device_enable (struct ssb_device*,int ) ;
 int ssb_device_is_enabled (struct ssb_device*) ;
 int ssb_pcicore_init_clientmode (struct ssb_pcicore*) ;
 int ssb_pcicore_init_hostmode (struct ssb_pcicore*) ;

void ssb_pcicore_init(struct ssb_pcicore *pc)
{
 struct ssb_device *dev = pc->dev;

 if (!dev)
  return;
 if (!ssb_device_is_enabled(dev))
  ssb_device_enable(dev, 0);






 if (!pc->hostmode)
  ssb_pcicore_init_clientmode(pc);
}

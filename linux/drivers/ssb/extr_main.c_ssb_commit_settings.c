
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssb_device {int dummy; } ;
struct TYPE_4__ {struct ssb_device* dev; } ;
struct TYPE_3__ {struct ssb_device* dev; } ;
struct ssb_bus {TYPE_2__ chipco; TYPE_1__ pcicore; } ;


 scalar_t__ WARN_ON (int) ;
 int ssb_broadcast_value (struct ssb_device*,int,int ) ;

void ssb_commit_settings(struct ssb_bus *bus)
{
 struct ssb_device *dev;




 dev = bus->chipco.dev;

 if (WARN_ON(!dev))
  return;

 ssb_broadcast_value(dev, 0xFD8, 0);
}

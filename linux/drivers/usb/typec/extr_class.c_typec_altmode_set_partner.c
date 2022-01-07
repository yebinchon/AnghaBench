
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_port {int dev; } ;
struct typec_plug {size_t index; } ;
struct typec_device_id {int member_1; int member_0; } ;
struct TYPE_2__ {int parent; } ;
struct typec_altmode {TYPE_1__ dev; int mode; int svid; } ;
struct device {int dummy; } ;
struct altmode {struct altmode* partner; struct altmode** plug; struct typec_altmode adev; } ;


 int altmode_match ;
 struct device* device_find_child (int *,struct typec_device_id*,int ) ;
 scalar_t__ is_typec_plug (int ) ;
 struct altmode* to_altmode (int ) ;
 int to_typec_altmode (struct device*) ;
 struct typec_plug* to_typec_plug (int ) ;
 struct typec_port* typec_altmode2port (struct typec_altmode*) ;

__attribute__((used)) static void typec_altmode_set_partner(struct altmode *altmode)
{
 struct typec_altmode *adev = &altmode->adev;
 struct typec_device_id id = { adev->svid, adev->mode, };
 struct typec_port *port = typec_altmode2port(adev);
 struct altmode *partner;
 struct device *dev;

 dev = device_find_child(&port->dev, &id, altmode_match);
 if (!dev)
  return;


 partner = to_altmode(to_typec_altmode(dev));
 altmode->partner = partner;


 if (is_typec_plug(adev->dev.parent)) {
  struct typec_plug *plug = to_typec_plug(adev->dev.parent);

  partner->plug[plug->index] = altmode;
 } else {
  partner->partner = altmode;
 }
}

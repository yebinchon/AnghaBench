
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_plug {size_t index; } ;
struct TYPE_2__ {int parent; } ;
struct typec_altmode {TYPE_1__ dev; } ;
struct altmode {struct altmode* partner; int ** plug; struct typec_altmode adev; } ;


 scalar_t__ is_typec_plug (int ) ;
 int put_device (TYPE_1__*) ;
 struct typec_plug* to_typec_plug (int ) ;

__attribute__((used)) static void typec_altmode_put_partner(struct altmode *altmode)
{
 struct altmode *partner = altmode->partner;
 struct typec_altmode *adev;

 if (!partner)
  return;

 adev = &partner->adev;

 if (is_typec_plug(adev->dev.parent)) {
  struct typec_plug *plug = to_typec_plug(adev->dev.parent);

  partner->plug[plug->index] = ((void*)0);
 } else {
  partner->partner = ((void*)0);
 }
 put_device(&adev->dev);
}

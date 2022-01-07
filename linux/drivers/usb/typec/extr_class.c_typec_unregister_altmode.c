
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_altmode {int dev; } ;
struct TYPE_2__ {int mux; } ;


 scalar_t__ IS_ERR_OR_NULL (struct typec_altmode*) ;
 int device_unregister (int *) ;
 TYPE_1__* to_altmode (struct typec_altmode*) ;
 int typec_mux_put (int ) ;

void typec_unregister_altmode(struct typec_altmode *adev)
{
 if (IS_ERR_OR_NULL(adev))
  return;
 typec_mux_put(to_altmode(adev)->mux);
 device_unregister(&adev->dev);
}

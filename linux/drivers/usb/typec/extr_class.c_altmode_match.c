
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_device_id {scalar_t__ svid; scalar_t__ mode; } ;
struct typec_altmode {scalar_t__ svid; scalar_t__ mode; } ;
struct device {int dummy; } ;


 int is_typec_altmode (struct device*) ;
 struct typec_altmode* to_typec_altmode (struct device*) ;

__attribute__((used)) static int altmode_match(struct device *dev, void *data)
{
 struct typec_altmode *adev = to_typec_altmode(dev);
 struct typec_device_id *id = data;

 if (!is_typec_altmode(dev))
  return 0;

 return ((adev->svid == id->svid) && (adev->mode == id->mode));
}

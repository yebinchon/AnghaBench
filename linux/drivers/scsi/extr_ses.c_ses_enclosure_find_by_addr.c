
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ses_component {scalar_t__ addr; } ;
struct enclosure_device {int components; TYPE_1__* component; } ;
struct efd {scalar_t__ addr; TYPE_2__* dev; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {struct ses_component* scratch; } ;


 int KOBJ_CHANGE ;
 scalar_t__ enclosure_add_device (struct enclosure_device*,int,TYPE_2__*) ;
 int kobject_uevent (int *,int ) ;

__attribute__((used)) static int ses_enclosure_find_by_addr(struct enclosure_device *edev,
          void *data)
{
 struct efd *efd = data;
 int i;
 struct ses_component *scomp;

 if (!edev->component[0].scratch)
  return 0;

 for (i = 0; i < edev->components; i++) {
  scomp = edev->component[i].scratch;
  if (scomp->addr != efd->addr)
   continue;

  if (enclosure_add_device(edev, i, efd->dev) == 0)
   kobject_uevent(&efd->dev->kobj, KOBJ_CHANGE);
  return 1;
 }
 return 0;
}

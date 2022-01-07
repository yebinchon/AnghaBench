
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct typec_altmode {TYPE_2__* ops; } ;
struct altmode {TYPE_1__* partner; } ;
struct TYPE_4__ {int (* vdm ) (struct typec_altmode*,int const,int const*,int) ;} ;
struct TYPE_3__ {struct typec_altmode adev; } ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int stub1 (struct typec_altmode*,int const,int const*,int) ;
 struct altmode* to_altmode (struct typec_altmode*) ;

int typec_altmode_vdm(struct typec_altmode *adev,
        const u32 header, const u32 *vdo, int count)
{
 struct typec_altmode *pdev;
 struct altmode *altmode;

 if (!adev)
  return 0;

 altmode = to_altmode(adev);

 if (!altmode->partner)
  return -ENODEV;

 pdev = &altmode->partner->adev;

 if (!pdev->ops || !pdev->ops->vdm)
  return -EOPNOTSUPP;

 return pdev->ops->vdm(pdev, header, vdo, count);
}

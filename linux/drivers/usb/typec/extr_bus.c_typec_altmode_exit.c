
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct typec_altmode {TYPE_1__* ops; int active; } ;
struct altmode {struct typec_altmode adev; } ;
struct TYPE_4__ {struct altmode* partner; } ;
struct TYPE_3__ {int (* exit ) (struct typec_altmode*) ;int enter; } ;


 int EOPNOTSUPP ;
 int TYPEC_STATE_SAFE ;
 int stub1 (struct typec_altmode*) ;
 TYPE_2__* to_altmode (struct typec_altmode*) ;
 int typec_altmode_set_state (struct typec_altmode*,int ) ;

int typec_altmode_exit(struct typec_altmode *adev)
{
 struct altmode *partner = to_altmode(adev)->partner;
 struct typec_altmode *pdev = &partner->adev;
 int ret;

 if (!adev || !adev->active)
  return 0;

 if (!pdev->ops || !pdev->ops->enter)
  return -EOPNOTSUPP;


 ret = typec_altmode_set_state(adev, TYPEC_STATE_SAFE);
 if (ret)
  return ret;


 return pdev->ops->exit(pdev);
}

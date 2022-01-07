
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct typec_altmode {TYPE_2__* ops; } ;
struct TYPE_6__ {TYPE_1__* partner; } ;
struct TYPE_5__ {int (* attention ) (struct typec_altmode*,int ) ;} ;
struct TYPE_4__ {struct typec_altmode adev; } ;


 int stub1 (struct typec_altmode*,int ) ;
 TYPE_3__* to_altmode (struct typec_altmode*) ;

void typec_altmode_attention(struct typec_altmode *adev, u32 vdo)
{
 struct typec_altmode *pdev = &to_altmode(adev)->partner->adev;

 if (pdev->ops && pdev->ops->attention)
  pdev->ops->attention(pdev, vdo);
}

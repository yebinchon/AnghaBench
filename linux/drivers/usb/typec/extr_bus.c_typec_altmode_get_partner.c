
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct typec_altmode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* partner; } ;
struct TYPE_3__ {struct typec_altmode const adev; } ;


 TYPE_2__* to_altmode (struct typec_altmode*) ;

const struct typec_altmode *
typec_altmode_get_partner(struct typec_altmode *adev)
{
 return adev ? &to_altmode(adev)->partner->adev : ((void*)0);
}

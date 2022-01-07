
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_altmode {int dev; } ;
struct notifier_block {int dummy; } ;
struct altmode {int nh; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int put_device (int *) ;
 struct altmode* to_altmode (struct typec_altmode*) ;

void typec_altmode_unregister_notifier(struct typec_altmode *adev,
           struct notifier_block *nb)
{
 struct altmode *altmode = to_altmode(adev);

 blocking_notifier_chain_unregister(&altmode->nh, nb);
 put_device(&adev->dev);
}

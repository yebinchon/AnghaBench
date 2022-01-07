
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct typec_altmode {TYPE_1__ dev; } ;
struct dp_altmode {int work; } ;


 int cancel_work_sync (int *) ;
 int dp_altmode_group ;
 int sysfs_remove_group (int *,int *) ;
 struct dp_altmode* typec_altmode_get_drvdata (struct typec_altmode*) ;

void dp_altmode_remove(struct typec_altmode *alt)
{
 struct dp_altmode *dp = typec_altmode_get_drvdata(alt);

 sysfs_remove_group(&alt->dev.kobj, &dp_altmode_group);
 cancel_work_sync(&dp->work);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 int KOBJ_CHANGE ;
 int kobject_uevent (int *,int ) ;
 TYPE_1__* ocf_kset ;

__attribute__((used)) static void sclp_ocf_change_notify(struct work_struct *work)
{
 kobject_uevent(&ocf_kset->kobj, KOBJ_CHANGE);
}

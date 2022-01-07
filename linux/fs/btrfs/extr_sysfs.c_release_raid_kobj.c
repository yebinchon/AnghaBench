
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int kfree (int ) ;
 int to_raid_kobj (struct kobject*) ;

__attribute__((used)) static void release_raid_kobj(struct kobject *kobj)
{
 kfree(to_raid_kobj(kobj));
}

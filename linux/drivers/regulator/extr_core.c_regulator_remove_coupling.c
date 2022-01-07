
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coupling_desc {unsigned int n_coupled; struct regulator_dev** coupled_rdevs; int n_resolved; struct regulator_coupler* coupler; } ;
struct regulator_dev {struct coupling_desc coupling_desc; } ;
struct regulator_coupler {int (* detach_regulator ) (struct regulator_coupler*,struct regulator_dev*) ;} ;


 int kfree (struct regulator_dev**) ;
 int rdev_err (struct regulator_dev*,char*,int) ;
 int regulator_lock (struct regulator_dev*) ;
 int regulator_unlock (struct regulator_dev*) ;
 int stub1 (struct regulator_coupler*,struct regulator_dev*) ;

__attribute__((used)) static void regulator_remove_coupling(struct regulator_dev *rdev)
{
 struct regulator_coupler *coupler = rdev->coupling_desc.coupler;
 struct coupling_desc *__c_desc, *c_desc = &rdev->coupling_desc;
 struct regulator_dev *__c_rdev, *c_rdev;
 unsigned int __n_coupled, n_coupled;
 int i, k;
 int err;

 n_coupled = c_desc->n_coupled;

 for (i = 1; i < n_coupled; i++) {
  c_rdev = c_desc->coupled_rdevs[i];

  if (!c_rdev)
   continue;

  regulator_lock(c_rdev);

  __c_desc = &c_rdev->coupling_desc;
  __n_coupled = __c_desc->n_coupled;

  for (k = 1; k < __n_coupled; k++) {
   __c_rdev = __c_desc->coupled_rdevs[k];

   if (__c_rdev == rdev) {
    __c_desc->coupled_rdevs[k] = ((void*)0);
    __c_desc->n_resolved--;
    break;
   }
  }

  regulator_unlock(c_rdev);

  c_desc->coupled_rdevs[i] = ((void*)0);
  c_desc->n_resolved--;
 }

 if (coupler && coupler->detach_regulator) {
  err = coupler->detach_regulator(coupler, rdev);
  if (err)
   rdev_err(rdev, "failed to detach from coupler: %d\n",
     err);
 }

 kfree(rdev->coupling_desc.coupled_rdevs);
 rdev->coupling_desc.coupled_rdevs = ((void*)0);
}

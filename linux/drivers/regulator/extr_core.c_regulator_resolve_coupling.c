
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coupling_desc {int n_coupled; int n_resolved; struct regulator_dev** coupled_rdevs; struct regulator_coupler* coupler; } ;
struct regulator_dev {struct coupling_desc coupling_desc; } ;
struct regulator_coupler {int dummy; } ;


 struct regulator_dev* of_parse_coupled_regulator (struct regulator_dev*,int) ;
 int rdev_err (struct regulator_dev*,char*,int ) ;
 int rdev_get_name (struct regulator_dev*) ;
 int regulator_lock (struct regulator_dev*) ;
 int regulator_unlock (struct regulator_dev*) ;

__attribute__((used)) static void regulator_resolve_coupling(struct regulator_dev *rdev)
{
 struct regulator_coupler *coupler = rdev->coupling_desc.coupler;
 struct coupling_desc *c_desc = &rdev->coupling_desc;
 int n_coupled = c_desc->n_coupled;
 struct regulator_dev *c_rdev;
 int i;

 for (i = 1; i < n_coupled; i++) {

  if (c_desc->coupled_rdevs[i])
   continue;

  c_rdev = of_parse_coupled_regulator(rdev, i - 1);

  if (!c_rdev)
   continue;

  if (c_rdev->coupling_desc.coupler != coupler) {
   rdev_err(rdev, "coupler mismatch with %s\n",
     rdev_get_name(c_rdev));
   return;
  }

  regulator_lock(c_rdev);

  c_desc->coupled_rdevs[i] = c_rdev;
  c_desc->n_resolved++;

  regulator_unlock(c_rdev);

  regulator_resolve_coupling(c_rdev);
 }
}

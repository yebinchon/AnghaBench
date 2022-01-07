
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n_coupled; int coupler; int n_resolved; struct regulator_dev** coupled_rdevs; } ;
struct regulator_dev {TYPE_1__ coupling_desc; } ;


 int CONFIG_OF ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct regulator_dev** kzalloc (size_t,int ) ;
 int of_check_coupling_data (struct regulator_dev*) ;
 int of_get_n_coupled (struct regulator_dev*) ;
 int rdev_err (struct regulator_dev*,char*,int) ;
 int regulator_find_coupler (struct regulator_dev*) ;

__attribute__((used)) static int regulator_init_coupling(struct regulator_dev *rdev)
{
 int err, n_phandles;
 size_t alloc_size;

 if (!IS_ENABLED(CONFIG_OF))
  n_phandles = 0;
 else
  n_phandles = of_get_n_coupled(rdev);

 alloc_size = sizeof(*rdev) * (n_phandles + 1);

 rdev->coupling_desc.coupled_rdevs = kzalloc(alloc_size, GFP_KERNEL);
 if (!rdev->coupling_desc.coupled_rdevs)
  return -ENOMEM;





 rdev->coupling_desc.coupled_rdevs[0] = rdev;
 rdev->coupling_desc.n_coupled = n_phandles + 1;
 rdev->coupling_desc.n_resolved++;


 if (n_phandles == 0)
  return 0;

 if (!of_check_coupling_data(rdev))
  return -EPERM;

 rdev->coupling_desc.coupler = regulator_find_coupler(rdev);
 if (IS_ERR(rdev->coupling_desc.coupler)) {
  err = PTR_ERR(rdev->coupling_desc.coupler);
  rdev_err(rdev, "failed to get coupler: %d\n", err);
  return err;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n_coupled; } ;
struct regulator_dev {TYPE_1__ coupling_desc; } ;
struct regulator_coupler {int dummy; } ;


 int EPERM ;
 int rdev_err (struct regulator_dev*,char*) ;

__attribute__((used)) static int generic_coupler_attach(struct regulator_coupler *coupler,
      struct regulator_dev *rdev)
{
 if (rdev->coupling_desc.n_coupled > 2) {
  rdev_err(rdev,
    "Voltage balancing for multiple regulator couples is unimplemented\n");
  return -EPERM;
 }

 return 0;
}

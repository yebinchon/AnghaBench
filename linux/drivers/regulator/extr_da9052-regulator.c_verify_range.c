
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_regulator_info {int max_uV; int min_uV; } ;


 int EINVAL ;

__attribute__((used)) static int verify_range(struct da9052_regulator_info *info,
    int min_uV, int max_uV)
{
 if (min_uV > info->max_uV || max_uV < info->min_uV)
  return -EINVAL;

 return 0;
}

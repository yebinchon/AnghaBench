
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int sh73a0_vccq_mc0_endisable (struct regulator_dev*,int) ;

__attribute__((used)) static int sh73a0_vccq_mc0_enable(struct regulator_dev *reg)
{
 sh73a0_vccq_mc0_endisable(reg, 1);
 return 0;
}

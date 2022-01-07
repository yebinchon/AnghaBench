
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct aat2870_regulator {int enable_mask; int enable_addr; struct aat2870_data* aat2870; } ;
struct aat2870_data {int (* update ) (struct aat2870_data*,int ,int ,int ) ;} ;


 struct aat2870_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int stub1 (struct aat2870_data*,int ,int ,int ) ;

__attribute__((used)) static int aat2870_ldo_disable(struct regulator_dev *rdev)
{
 struct aat2870_regulator *ri = rdev_get_drvdata(rdev);
 struct aat2870_data *aat2870 = ri->aat2870;

 return aat2870->update(aat2870, ri->enable_addr, ri->enable_mask, 0);
}

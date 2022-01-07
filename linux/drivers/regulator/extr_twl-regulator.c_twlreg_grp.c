
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int TWL_MODULE_PM_RECEIVER ;
 int VREG_GRP ;
 int rdev_get_drvdata (struct regulator_dev*) ;
 int twlreg_read (int ,int ,int ) ;

__attribute__((used)) static int twlreg_grp(struct regulator_dev *rdev)
{
 return twlreg_read(rdev_get_drvdata(rdev), TWL_MODULE_PM_RECEIVER,
         VREG_GRP);
}

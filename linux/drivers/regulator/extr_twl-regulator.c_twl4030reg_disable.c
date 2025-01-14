
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int P1_GRP_4030 ;
 int P2_GRP_4030 ;
 int P3_GRP_4030 ;
 int TWL_MODULE_PM_RECEIVER ;
 int VREG_GRP ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 int twlreg_grp (struct regulator_dev*) ;
 int twlreg_write (struct twlreg_info*,int ,int ,int) ;

__attribute__((used)) static int twl4030reg_disable(struct regulator_dev *rdev)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 int grp;
 int ret;

 grp = twlreg_grp(rdev);
 if (grp < 0)
  return grp;

 grp &= ~(P1_GRP_4030 | P2_GRP_4030 | P3_GRP_4030);

 ret = twlreg_write(info, TWL_MODULE_PM_RECEIVER, VREG_GRP, grp);

 return ret;
}

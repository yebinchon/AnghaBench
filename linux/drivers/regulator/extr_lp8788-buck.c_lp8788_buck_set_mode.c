
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct lp8788_buck {int lp; } ;
typedef enum lp8788_buck_id { ____Placeholder_lp8788_buck_id } lp8788_buck_id ;


 int BUCK_FPWM_MASK (int) ;
 int BUCK_FPWM_SHIFT (int) ;
 int EINVAL ;
 int LP8788_AUTO_PWM ;
 int LP8788_BUCK_PWM ;
 int LP8788_FORCE_PWM ;


 int lp8788_update_bits (int ,int ,int,int) ;
 struct lp8788_buck* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp8788_buck_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 struct lp8788_buck *buck = rdev_get_drvdata(rdev);
 enum lp8788_buck_id id = rdev_get_id(rdev);
 u8 mask, val;

 mask = BUCK_FPWM_MASK(id);
 switch (mode) {
 case 129:
  val = LP8788_FORCE_PWM << BUCK_FPWM_SHIFT(id);
  break;
 case 128:
  val = LP8788_AUTO_PWM << BUCK_FPWM_SHIFT(id);
  break;
 default:
  return -EINVAL;
 }

 return lp8788_update_bits(buck->lp, LP8788_BUCK_PWM, mask, val);
}

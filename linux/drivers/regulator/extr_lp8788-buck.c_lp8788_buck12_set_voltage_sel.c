
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct lp8788_buck {int lp; scalar_t__ dvs; } ;
typedef enum lp8788_buck_id { ____Placeholder_lp8788_buck_id } lp8788_buck_id ;


 int EINVAL ;
 int LP8788_VOUT_M ;
 int lp8788_is_valid_buck_addr (int ) ;
 int lp8788_select_buck_vout_addr (struct lp8788_buck*,int) ;
 int lp8788_set_dvs (struct lp8788_buck*,int) ;
 int lp8788_update_bits (int ,int ,int ,unsigned int) ;
 struct lp8788_buck* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp8788_buck12_set_voltage_sel(struct regulator_dev *rdev,
     unsigned selector)
{
 struct lp8788_buck *buck = rdev_get_drvdata(rdev);
 enum lp8788_buck_id id = rdev_get_id(rdev);
 u8 addr;

 if (buck->dvs)
  lp8788_set_dvs(buck, id);

 addr = lp8788_select_buck_vout_addr(buck, id);
 if (!lp8788_is_valid_buck_addr(addr))
  return -EINVAL;

 return lp8788_update_bits(buck->lp, addr, LP8788_VOUT_M, selector);
}

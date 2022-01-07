
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_member {int mask; int shift; } ;
struct rpm_reg_parts {struct request_member ia; } ;
struct regulator_dev {int dummy; } ;
struct qcom_rpm_reg {int lock; struct rpm_reg_parts* parts; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct qcom_rpm_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int rpm_reg_write (struct qcom_rpm_reg*,struct request_member const*,int) ;

__attribute__((used)) static int rpm_reg_set_load(struct regulator_dev *rdev, int load_uA)
{
 struct qcom_rpm_reg *vreg = rdev_get_drvdata(rdev);
 const struct rpm_reg_parts *parts = vreg->parts;
 const struct request_member *req = &parts->ia;
 int load_mA = load_uA / 1000;
 int max_mA = req->mask >> req->shift;
 int ret;

 if (req->mask == 0)
  return -EINVAL;

 if (load_mA > max_mA)
  load_mA = max_mA;

 mutex_lock(&vreg->lock);
 ret = rpm_reg_write(vreg, req, load_mA);
 mutex_unlock(&vreg->lock);

 return ret;
}

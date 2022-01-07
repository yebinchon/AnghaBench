
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct lp8788_ldo {int lp; } ;
typedef enum lp8788_ldo_id { ____Placeholder_lp8788_ldo_id } lp8788_ldo_id ;


 int EINVAL ;
 int ENABLE_TIME_USEC ;
 int LP8788_DLDO1_TIMESTEP ;
 int LP8788_STARTUP_TIME_M ;
 int LP8788_STARTUP_TIME_S ;
 scalar_t__ lp8788_read_byte (int ,int,int*) ;
 struct lp8788_ldo* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp8788_ldo_enable_time(struct regulator_dev *rdev)
{
 struct lp8788_ldo *ldo = rdev_get_drvdata(rdev);
 enum lp8788_ldo_id id = rdev_get_id(rdev);
 u8 val, addr = LP8788_DLDO1_TIMESTEP + id;

 if (lp8788_read_byte(ldo->lp, addr, &val))
  return -EINVAL;

 val = (val & LP8788_STARTUP_TIME_M) >> LP8788_STARTUP_TIME_S;

 return ENABLE_TIME_USEC * val;
}

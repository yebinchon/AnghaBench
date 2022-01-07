
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp872x {scalar_t__ chipid; int dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {int enable_gpio; } ;


 int EINVAL ;
 int GPIOF_OUT_INIT_HIGH ;
 scalar_t__ LP8720 ;
 double LP8720_ENABLE_DELAY ;
 double LP8725_ENABLE_DELAY ;
 int dev_err (int ,char*,int) ;
 int devm_gpio_request_one (int ,int,int ,char*) ;
 int gpio_is_valid (int) ;
 int usleep_range (double,double) ;

__attribute__((used)) static int lp872x_hw_enable(struct lp872x *lp)
{
 int ret, gpio;

 if (!lp->pdata)
  return -EINVAL;

 gpio = lp->pdata->enable_gpio;
 if (!gpio_is_valid(gpio))
  return 0;


 ret = devm_gpio_request_one(lp->dev, gpio, GPIOF_OUT_INIT_HIGH, "LP872X EN");
 if (ret) {
  dev_err(lp->dev, "gpio request err: %d\n", ret);
  return ret;
 }


 if (lp->chipid == LP8720)
  usleep_range(LP8720_ENABLE_DELAY, 1.5 * LP8720_ENABLE_DELAY);
 else
  usleep_range(LP8725_ENABLE_DELAY, 1.5 * LP8725_ENABLE_DELAY);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct reset_control*) ;
 int PTR_ERR (struct reset_control*) ;
 struct reset_control* __reset_control_get (struct device*,int *,int ,int ,int,int) ;
 int reset_control_put (struct reset_control*) ;
 int reset_control_reset (struct reset_control*) ;

int __device_reset(struct device *dev, bool optional)
{
 struct reset_control *rstc;
 int ret;

 rstc = __reset_control_get(dev, ((void*)0), 0, 0, optional, 1);
 if (IS_ERR(rstc))
  return PTR_ERR(rstc);

 ret = reset_control_reset(rstc);

 reset_control_put(rstc);

 return ret;
}

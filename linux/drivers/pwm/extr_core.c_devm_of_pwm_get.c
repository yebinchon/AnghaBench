
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct pwm_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct pwm_device*) ;
 int devm_pwm_release ;
 int devres_add (struct device*,struct pwm_device**) ;
 struct pwm_device** devres_alloc (int ,int,int ) ;
 int devres_free (struct pwm_device**) ;
 struct pwm_device* of_pwm_get (struct device*,struct device_node*,char const*) ;

struct pwm_device *devm_of_pwm_get(struct device *dev, struct device_node *np,
       const char *con_id)
{
 struct pwm_device **ptr, *pwm;

 ptr = devres_alloc(devm_pwm_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 pwm = of_pwm_get(dev, np, con_id);
 if (!IS_ERR(pwm)) {
  *ptr = pwm;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return pwm;
}

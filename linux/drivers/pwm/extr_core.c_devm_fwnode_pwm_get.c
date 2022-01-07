
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 struct pwm_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct pwm_device*) ;
 struct pwm_device* acpi_pwm_get (struct fwnode_handle*) ;
 int devm_pwm_release ;
 int devres_add (struct device*,struct pwm_device**) ;
 struct pwm_device** devres_alloc (int ,int,int ) ;
 int devres_free (struct pwm_device**) ;
 scalar_t__ is_acpi_node (struct fwnode_handle*) ;
 scalar_t__ is_of_node (struct fwnode_handle*) ;
 struct pwm_device* of_pwm_get (struct device*,int ,char const*) ;
 int to_of_node (struct fwnode_handle*) ;

struct pwm_device *devm_fwnode_pwm_get(struct device *dev,
           struct fwnode_handle *fwnode,
           const char *con_id)
{
 struct pwm_device **ptr, *pwm = ERR_PTR(-ENODEV);

 ptr = devres_alloc(devm_pwm_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 if (is_of_node(fwnode))
  pwm = of_pwm_get(dev, to_of_node(fwnode), con_id);
 else if (is_acpi_node(fwnode))
  pwm = acpi_pwm_get(fwnode);

 if (!IS_ERR(pwm)) {
  *ptr = pwm;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return pwm;
}

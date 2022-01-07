
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device_ops {int dummy; } ;
struct proc_thermal_device {int int340x_zone; struct acpi_device* adev; struct device* dev; } ;
struct device {int dummy; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_install_notify_handler (int ,int ,int ,void*) ;
 struct proc_thermal_device* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ get_tjmax () ;
 int int340x_thermal_zone_add (struct acpi_device*,struct thermal_zone_device_ops*) ;
 int int340x_thermal_zone_remove (int ) ;
 struct thermal_zone_device_ops proc_thermal_local_ops ;
 int proc_thermal_notify ;
 int proc_thermal_read_ppcc (struct proc_thermal_device*) ;
 scalar_t__ stored_tjmax ;

__attribute__((used)) static int proc_thermal_add(struct device *dev,
       struct proc_thermal_device **priv)
{
 struct proc_thermal_device *proc_priv;
 struct acpi_device *adev;
 acpi_status status;
 unsigned long long tmp;
 struct thermal_zone_device_ops *ops = ((void*)0);
 int ret;

 adev = ACPI_COMPANION(dev);
 if (!adev)
  return -ENODEV;

 proc_priv = devm_kzalloc(dev, sizeof(*proc_priv), GFP_KERNEL);
 if (!proc_priv)
  return -ENOMEM;

 proc_priv->dev = dev;
 proc_priv->adev = adev;
 *priv = proc_priv;

 ret = proc_thermal_read_ppcc(proc_priv);
 if (ret)
  return ret;

 status = acpi_evaluate_integer(adev->handle, "_TMP", ((void*)0), &tmp);
 if (ACPI_FAILURE(status)) {

  stored_tjmax = get_tjmax();
  if (stored_tjmax > 0)
   ops = &proc_thermal_local_ops;
 }

 proc_priv->int340x_zone = int340x_thermal_zone_add(adev, ops);
 if (IS_ERR(proc_priv->int340x_zone)) {
  return PTR_ERR(proc_priv->int340x_zone);
 } else
  ret = 0;

 ret = acpi_install_notify_handler(adev->handle, ACPI_DEVICE_NOTIFY,
       proc_thermal_notify,
       (void *)proc_priv);
 if (ret)
  goto remove_zone;

 return 0;

remove_zone:
 int340x_thermal_zone_remove(proc_priv->int340x_zone);

 return ret;
}

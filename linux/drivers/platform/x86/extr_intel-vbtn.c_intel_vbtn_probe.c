
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct intel_vbtn_priv {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int *) ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int acpi_ec_mark_gpe_for_wake () ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;
 int acpi_install_notify_handler (int ,int ,int ,struct platform_device*) ;
 int detect_tablet_mode (struct platform_device*) ;
 int dev_set_drvdata (int *,struct intel_vbtn_priv*) ;
 int dev_warn (int *,char*) ;
 int device_init_wakeup (int *,int) ;
 struct intel_vbtn_priv* devm_kzalloc (int *,int,int ) ;
 int intel_vbtn_input_setup (struct platform_device*) ;
 int notify_handler ;
 int pr_err (char*) ;

__attribute__((used)) static int intel_vbtn_probe(struct platform_device *device)
{
 acpi_handle handle = ACPI_HANDLE(&device->dev);
 struct intel_vbtn_priv *priv;
 acpi_status status;
 int err;

 status = acpi_evaluate_object(handle, "VBDL", ((void*)0), ((void*)0));
 if (ACPI_FAILURE(status)) {
  dev_warn(&device->dev, "failed to read Intel Virtual Button driver\n");
  return -ENODEV;
 }

 priv = devm_kzalloc(&device->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 dev_set_drvdata(&device->dev, priv);

 err = intel_vbtn_input_setup(device);
 if (err) {
  pr_err("Failed to setup Intel Virtual Button\n");
  return err;
 }

 detect_tablet_mode(device);

 status = acpi_install_notify_handler(handle,
          ACPI_DEVICE_NOTIFY,
          notify_handler,
          device);
 if (ACPI_FAILURE(status))
  return -EBUSY;

 device_init_wakeup(&device->dev, 1);





 acpi_ec_mark_gpe_for_wake();
 return 0;
}

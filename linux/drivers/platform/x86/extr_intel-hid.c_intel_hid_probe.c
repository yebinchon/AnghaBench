
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct intel_hid_priv {scalar_t__ array; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int *) ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INTEL_HID_DSM_BTNL_FN ;
 int INTEL_HID_DSM_HDMM_FN ;
 int acpi_ec_mark_gpe_for_wake () ;
 int acpi_install_notify_handler (int ,int ,int ,struct platform_device*) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 scalar_t__ button_array_present (struct platform_device*) ;
 int dev_info (int *,char*) ;
 int dev_set_drvdata (int *,struct intel_hid_priv*) ;
 int dev_warn (int *,char*) ;
 int device_init_wakeup (int *,int) ;
 struct intel_hid_priv* devm_kzalloc (int *,int,int ) ;
 int intel_button_array_enable (int *,int) ;
 int intel_button_array_input_setup (struct platform_device*) ;
 int intel_hid_evaluate_method (int ,int ,unsigned long long*) ;
 int intel_hid_init_dsm (int ) ;
 int intel_hid_input_setup (struct platform_device*) ;
 int intel_hid_set_enable (int *,int) ;
 int notify_handler ;
 int pr_err (char*) ;

__attribute__((used)) static int intel_hid_probe(struct platform_device *device)
{
 acpi_handle handle = ACPI_HANDLE(&device->dev);
 unsigned long long mode;
 struct intel_hid_priv *priv;
 acpi_status status;
 int err;

 intel_hid_init_dsm(handle);

 if (!intel_hid_evaluate_method(handle, INTEL_HID_DSM_HDMM_FN, &mode)) {
  dev_warn(&device->dev, "failed to read mode\n");
  return -ENODEV;
 }

 if (mode != 0) {





  dev_info(&device->dev, "platform is not in simple mode\n");
  return -ENODEV;
 }

 priv = devm_kzalloc(&device->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 dev_set_drvdata(&device->dev, priv);

 err = intel_hid_input_setup(device);
 if (err) {
  pr_err("Failed to setup Intel HID hotkeys\n");
  return err;
 }


 if (button_array_present(device)) {
  dev_info(&device->dev, "platform supports 5 button array\n");
  err = intel_button_array_input_setup(device);
  if (err)
   pr_err("Failed to setup Intel 5 button array hotkeys\n");
 }

 status = acpi_install_notify_handler(handle,
          ACPI_DEVICE_NOTIFY,
          notify_handler,
          device);
 if (ACPI_FAILURE(status))
  return -EBUSY;

 err = intel_hid_set_enable(&device->dev, 1);
 if (err)
  goto err_remove_notify;

 if (priv->array) {
  unsigned long long dummy;

  intel_button_array_enable(&device->dev, 1);


  if (!intel_hid_evaluate_method(handle, INTEL_HID_DSM_BTNL_FN,
            &dummy)) {
   dev_warn(&device->dev,
     "failed to enable HID power button\n");
  }
 }

 device_init_wakeup(&device->dev, 1);





 acpi_ec_mark_gpe_for_wake();
 return 0;

err_remove_notify:
 acpi_remove_notify_handler(handle, ACPI_DEVICE_NOTIFY, notify_handler);

 return err;
}

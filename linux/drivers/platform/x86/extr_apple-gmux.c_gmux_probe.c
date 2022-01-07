
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct pnp_device_id {int dummy; } ;
struct pnp_dev {int dev; } ;
struct backlight_properties {scalar_t__ max_brightness; int type; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct apple_gmux_data {scalar_t__ iostart; scalar_t__ iolen; int indexed; int gpe; int external_switchable; int dhandle; int powerchange_done; int power_state; struct backlight_device* bdev; int index_lock; } ;
typedef int props ;
typedef int acpi_status ;


 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int *) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int BACKLIGHT_PLATFORM ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ GMUX_MAX_BRIGHTNESS ;
 scalar_t__ GMUX_MIN_IO_LEN ;
 int GMUX_PORT_MAX_BRIGHTNESS ;
 int GMUX_PORT_SWITCH_EXTERNAL ;
 int GMUX_PORT_VERSION_MAJOR ;
 int GMUX_PORT_VERSION_MINOR ;
 int GMUX_PORT_VERSION_RELEASE ;
 int IORESOURCE_IO ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 int VGA_SWITCHEROO_CAN_SWITCH_DDC ;
 int VGA_SWITCHEROO_NEEDS_EDP_CONFIG ;
 int VGA_SWITCHEROO_ON ;
 scalar_t__ WARN_ON (int) ;
 int acpi_backlight_vendor ;
 int acpi_disable_gpe (int *,int) ;
 int acpi_enable_gpe (int *,int) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_format_exception (int ) ;
 int acpi_install_notify_handler (int ,int ,int *,struct pnp_dev*) ;
 int acpi_remove_notify_handler (int ,int ,int *) ;
 int acpi_video_set_dmi_backlight_type (int ) ;
 int apple_bl_unregister () ;
 struct apple_gmux_data* apple_gmux_data ;
 struct backlight_device* backlight_device_register (char*,int *,struct apple_gmux_data*,int *,struct backlight_properties*) ;
 int backlight_device_unregister (struct backlight_device*) ;
 int backlight_update_status (struct backlight_device*) ;
 int bus_for_each_dev (int *,int *,int *,int ) ;
 int dev_name (int *) ;
 int gmux_bl_ops ;
 int gmux_disable_interrupts (struct apple_gmux_data*) ;
 int gmux_enable_interrupts (struct apple_gmux_data*) ;
 int gmux_get_brightness (struct backlight_device*) ;
 int gmux_handler_classic ;
 int gmux_handler_indexed ;
 scalar_t__ gmux_is_indexed (struct apple_gmux_data*) ;
 int gmux_notify_handler ;
 void* gmux_read32 (struct apple_gmux_data*,int ) ;
 int gmux_read8 (struct apple_gmux_data*,int ) ;
 int gmux_read_switch_state (struct apple_gmux_data*) ;
 int gmux_write8 (struct apple_gmux_data*,int ,int) ;
 int init_completion (int *) ;
 int is_thunderbolt ;
 int kfree (struct apple_gmux_data*) ;
 struct apple_gmux_data* kzalloc (int,int ) ;
 int memset (struct backlight_properties*,int ,int) ;
 int mutex_init (int *) ;
 int pci_bus_type ;
 struct resource* pnp_get_resource (struct pnp_dev*,int ,int ) ;
 int pnp_set_drvdata (struct pnp_dev*,struct apple_gmux_data*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,...) ;
 int pr_warn (char*) ;
 int release_region (scalar_t__,scalar_t__) ;
 int request_region (scalar_t__,scalar_t__,char*) ;
 int vga_switcheroo_register_handler (int *,int ) ;

__attribute__((used)) static int gmux_probe(struct pnp_dev *pnp, const struct pnp_device_id *id)
{
 struct apple_gmux_data *gmux_data;
 struct resource *res;
 struct backlight_properties props;
 struct backlight_device *bdev;
 u8 ver_major, ver_minor, ver_release;
 int ret = -ENXIO;
 acpi_status status;
 unsigned long long gpe;

 if (apple_gmux_data)
  return -EBUSY;

 gmux_data = kzalloc(sizeof(*gmux_data), GFP_KERNEL);
 if (!gmux_data)
  return -ENOMEM;
 pnp_set_drvdata(pnp, gmux_data);

 res = pnp_get_resource(pnp, IORESOURCE_IO, 0);
 if (!res) {
  pr_err("Failed to find gmux I/O resource\n");
  goto err_free;
 }

 gmux_data->iostart = res->start;
 gmux_data->iolen = res->end - res->start;

 if (gmux_data->iolen < GMUX_MIN_IO_LEN) {
  pr_err("gmux I/O region too small (%lu < %u)\n",
         gmux_data->iolen, GMUX_MIN_IO_LEN);
  goto err_free;
 }

 if (!request_region(gmux_data->iostart, gmux_data->iolen,
       "Apple gmux")) {
  pr_err("gmux I/O already in use\n");
  goto err_free;
 }







 ver_major = gmux_read8(gmux_data, GMUX_PORT_VERSION_MAJOR);
 ver_minor = gmux_read8(gmux_data, GMUX_PORT_VERSION_MINOR);
 ver_release = gmux_read8(gmux_data, GMUX_PORT_VERSION_RELEASE);
 if (ver_major == 0xff && ver_minor == 0xff && ver_release == 0xff) {
  if (gmux_is_indexed(gmux_data)) {
   u32 version;
   mutex_init(&gmux_data->index_lock);
   gmux_data->indexed = 1;
   version = gmux_read32(gmux_data,
    GMUX_PORT_VERSION_MAJOR);
   ver_major = (version >> 24) & 0xff;
   ver_minor = (version >> 16) & 0xff;
   ver_release = (version >> 8) & 0xff;
  } else {
   pr_info("gmux device not present\n");
   ret = -ENODEV;
   goto err_release;
  }
 }
 pr_info("Found gmux version %d.%d.%d [%s]\n", ver_major, ver_minor,
  ver_release, (gmux_data->indexed ? "indexed" : "classic"));

 memset(&props, 0, sizeof(props));
 props.type = BACKLIGHT_PLATFORM;
 props.max_brightness = gmux_read32(gmux_data, GMUX_PORT_MAX_BRIGHTNESS);







 if (WARN_ON(props.max_brightness > GMUX_MAX_BRIGHTNESS))
  props.max_brightness = GMUX_MAX_BRIGHTNESS;

 bdev = backlight_device_register("gmux_backlight", &pnp->dev,
      gmux_data, &gmux_bl_ops, &props);
 if (IS_ERR(bdev)) {
  ret = PTR_ERR(bdev);
  goto err_release;
 }

 gmux_data->bdev = bdev;
 bdev->props.brightness = gmux_get_brightness(bdev);
 backlight_update_status(bdev);







 acpi_video_set_dmi_backlight_type(acpi_backlight_vendor);
 apple_bl_unregister();

 gmux_data->power_state = VGA_SWITCHEROO_ON;

 gmux_data->dhandle = ACPI_HANDLE(&pnp->dev);
 if (!gmux_data->dhandle) {
  pr_err("Cannot find acpi handle for pnp device %s\n",
         dev_name(&pnp->dev));
  ret = -ENODEV;
  goto err_notify;
 }

 status = acpi_evaluate_integer(gmux_data->dhandle, "GMGP", ((void*)0), &gpe);
 if (ACPI_SUCCESS(status)) {
  gmux_data->gpe = (int)gpe;

  status = acpi_install_notify_handler(gmux_data->dhandle,
           ACPI_DEVICE_NOTIFY,
           &gmux_notify_handler, pnp);
  if (ACPI_FAILURE(status)) {
   pr_err("Install notify handler failed: %s\n",
          acpi_format_exception(status));
   ret = -ENODEV;
   goto err_notify;
  }

  status = acpi_enable_gpe(((void*)0), gmux_data->gpe);
  if (ACPI_FAILURE(status)) {
   pr_err("Cannot enable gpe: %s\n",
          acpi_format_exception(status));
   goto err_enable_gpe;
  }
 } else {
  pr_warn("No GPE found for gmux\n");
  gmux_data->gpe = -1;
 }





 gmux_data->external_switchable =
  !bus_for_each_dev(&pci_bus_type, ((void*)0), ((void*)0), is_thunderbolt);
 if (!gmux_data->external_switchable)
  gmux_write8(gmux_data, GMUX_PORT_SWITCH_EXTERNAL, 3);

 apple_gmux_data = gmux_data;
 init_completion(&gmux_data->powerchange_done);
 gmux_enable_interrupts(gmux_data);
 gmux_read_switch_state(gmux_data);
 if (gmux_data->indexed)
  ret = vga_switcheroo_register_handler(&gmux_handler_indexed,
           VGA_SWITCHEROO_NEEDS_EDP_CONFIG);
 else
  ret = vga_switcheroo_register_handler(&gmux_handler_classic,
           VGA_SWITCHEROO_CAN_SWITCH_DDC);
 if (ret) {
  pr_err("Failed to register vga_switcheroo handler\n");
  goto err_register_handler;
 }

 return 0;

err_register_handler:
 gmux_disable_interrupts(gmux_data);
 apple_gmux_data = ((void*)0);
 if (gmux_data->gpe >= 0)
  acpi_disable_gpe(((void*)0), gmux_data->gpe);
err_enable_gpe:
 if (gmux_data->gpe >= 0)
  acpi_remove_notify_handler(gmux_data->dhandle,
        ACPI_DEVICE_NOTIFY,
        &gmux_notify_handler);
err_notify:
 backlight_device_unregister(bdev);
err_release:
 release_region(gmux_data->iostart, gmux_data->iolen);
err_free:
 kfree(gmux_data);
 return ret;
}

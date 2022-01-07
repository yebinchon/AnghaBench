
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
struct apple_gmux_data {scalar_t__ gpe; int iolen; int iostart; int bdev; int dhandle; } ;


 int ACPI_DEVICE_NOTIFY ;
 int acpi_disable_gpe (int *,scalar_t__) ;
 int acpi_remove_notify_handler (int ,int ,int *) ;
 int acpi_video_register () ;
 int apple_bl_register () ;
 int * apple_gmux_data ;
 int backlight_device_unregister (int ) ;
 int gmux_disable_interrupts (struct apple_gmux_data*) ;
 int gmux_notify_handler ;
 int kfree (struct apple_gmux_data*) ;
 struct apple_gmux_data* pnp_get_drvdata (struct pnp_dev*) ;
 int release_region (int ,int ) ;
 int vga_switcheroo_unregister_handler () ;

__attribute__((used)) static void gmux_remove(struct pnp_dev *pnp)
{
 struct apple_gmux_data *gmux_data = pnp_get_drvdata(pnp);

 vga_switcheroo_unregister_handler();
 gmux_disable_interrupts(gmux_data);
 if (gmux_data->gpe >= 0) {
  acpi_disable_gpe(((void*)0), gmux_data->gpe);
  acpi_remove_notify_handler(gmux_data->dhandle,
        ACPI_DEVICE_NOTIFY,
        &gmux_notify_handler);
 }

 backlight_device_unregister(gmux_data->bdev);

 release_region(gmux_data->iostart, gmux_data->iolen);
 apple_gmux_data = ((void*)0);
 kfree(gmux_data);

 acpi_video_register();
 apple_bl_register();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pnp_dev {int dummy; } ;
struct apple_gmux_data {int powerchange_done; } ;
typedef int acpi_handle ;


 int GMUX_INTERRUPT_STATUS_POWER ;
 int complete (int *) ;
 int gmux_clear_interrupts (struct apple_gmux_data*) ;
 int gmux_disable_interrupts (struct apple_gmux_data*) ;
 int gmux_enable_interrupts (struct apple_gmux_data*) ;
 int gmux_interrupt_get_status (struct apple_gmux_data*) ;
 struct apple_gmux_data* pnp_get_drvdata (struct pnp_dev*) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static void gmux_notify_handler(acpi_handle device, u32 value, void *context)
{
 u8 status;
 struct pnp_dev *pnp = (struct pnp_dev *)context;
 struct apple_gmux_data *gmux_data = pnp_get_drvdata(pnp);

 status = gmux_interrupt_get_status(gmux_data);
 gmux_disable_interrupts(gmux_data);
 pr_debug("Notify handler called: status %d\n", status);

 gmux_clear_interrupts(gmux_data);
 gmux_enable_interrupts(gmux_data);

 if (status & GMUX_INTERRUPT_STATUS_POWER)
  complete(&gmux_data->powerchange_done);
}

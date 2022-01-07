
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_device {int chip_select; int controller; } ;
struct lpss_config {int cs_sel_mask; int cs_sel_shift; int reg_cs_ctrl; } ;
struct driver_data {TYPE_1__* controller; } ;
struct TYPE_2__ {int max_speed_hz; } ;


 int __lpss_ssp_read_priv (struct driver_data*,int ) ;
 int __lpss_ssp_write_priv (struct driver_data*,int ,int) ;
 int ndelay (int) ;
 struct driver_data* spi_controller_get_devdata (int ) ;

__attribute__((used)) static void lpss_ssp_select_cs(struct spi_device *spi,
          const struct lpss_config *config)
{
 struct driver_data *drv_data =
  spi_controller_get_devdata(spi->controller);
 u32 value, cs;

 if (!config->cs_sel_mask)
  return;

 value = __lpss_ssp_read_priv(drv_data, config->reg_cs_ctrl);

 cs = spi->chip_select;
 cs <<= config->cs_sel_shift;
 if (cs != (value & config->cs_sel_mask)) {







  value &= ~config->cs_sel_mask;
  value |= cs;
  __lpss_ssp_write_priv(drv_data,
          config->reg_cs_ctrl, value);
  ndelay(1000000000 /
         (drv_data->controller->max_speed_hz / 2));
 }
}

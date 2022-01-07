
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int controller; } ;
struct lpss_config {int reg_cs_ctrl; } ;
struct driver_data {int dummy; } ;


 int LPSS_CS_CONTROL_CS_HIGH ;
 int __lpss_ssp_read_priv (struct driver_data*,int ) ;
 int __lpss_ssp_write_priv (struct driver_data*,int ,int ) ;
 struct lpss_config* lpss_get_config (struct driver_data*) ;
 int lpss_ssp_select_cs (struct spi_device*,struct lpss_config const*) ;
 struct driver_data* spi_controller_get_devdata (int ) ;

__attribute__((used)) static void lpss_ssp_cs_control(struct spi_device *spi, bool enable)
{
 struct driver_data *drv_data =
  spi_controller_get_devdata(spi->controller);
 const struct lpss_config *config;
 u32 value;

 config = lpss_get_config(drv_data);

 if (enable)
  lpss_ssp_select_cs(spi, config);

 value = __lpss_ssp_read_priv(drv_data, config->reg_cs_ctrl);
 if (enable)
  value &= ~LPSS_CS_CONTROL_CS_HIGH;
 else
  value |= LPSS_CS_CONTROL_CS_HIGH;
 __lpss_ssp_write_priv(drv_data, config->reg_cs_ctrl, value);
}

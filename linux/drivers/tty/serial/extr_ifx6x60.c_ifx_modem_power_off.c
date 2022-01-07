
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifx_spi_device {int dummy; } ;


 int IFX_MDM_RST_PMU ;
 int PO_POST_DELAY ;
 int gpio_set_value (int ,int) ;
 int msleep (int ) ;

__attribute__((used)) static int ifx_modem_power_off(struct ifx_spi_device *ifx_dev)
{
 gpio_set_value(IFX_MDM_RST_PMU, 1);
 msleep(PO_POST_DELAY);

 return 0;
}

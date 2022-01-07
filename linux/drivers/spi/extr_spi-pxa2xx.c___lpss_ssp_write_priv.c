
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {unsigned int lpss_base; } ;


 int WARN_ON (int) ;
 int writel (int ,unsigned int) ;

__attribute__((used)) static void __lpss_ssp_write_priv(struct driver_data *drv_data,
      unsigned offset, u32 value)
{
 WARN_ON(!drv_data->lpss_base);
 writel(value, drv_data->lpss_base + offset);
}

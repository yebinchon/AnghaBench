
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {unsigned int lpss_base; } ;


 int WARN_ON (int) ;
 int readl (unsigned int) ;

__attribute__((used)) static u32 __lpss_ssp_read_priv(struct driver_data *drv_data, unsigned offset)
{
 WARN_ON(!drv_data->lpss_base);
 return readl(drv_data->lpss_base + offset);
}

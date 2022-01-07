
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpss_config {int dummy; } ;
struct driver_data {size_t ssp_type; } ;


 size_t LPSS_LPT_SSP ;
 struct lpss_config const* lpss_platforms ;

__attribute__((used)) static inline const struct lpss_config
*lpss_get_config(const struct driver_data *drv_data)
{
 return &lpss_platforms[drv_data->ssp_type - LPSS_LPT_SSP];
}

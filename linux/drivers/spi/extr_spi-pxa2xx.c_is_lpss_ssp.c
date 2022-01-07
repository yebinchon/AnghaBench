
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int ssp_type; } ;
__attribute__((used)) static bool is_lpss_ssp(const struct driver_data *drv_data)
{
 switch (drv_data->ssp_type) {
 case 129:
 case 131:
 case 133:
 case 128:
 case 132:
 case 130:
  return 1;
 default:
  return 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int ssp_type; } ;






__attribute__((used)) static inline int pxa25x_ssp_comp(struct driver_data *drv_data)
{
 switch (drv_data->ssp_type) {
 case 129:
 case 130:
 case 128:
  return 1;
 default:
  return 0;
 }
}

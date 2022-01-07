
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {scalar_t__ ssp_type; } ;


 scalar_t__ QUARK_X1000_SSP ;

__attribute__((used)) static bool is_quark_x1000_ssp(const struct driver_data *drv_data)
{
 return drv_data->ssp_type == QUARK_X1000_SSP;
}

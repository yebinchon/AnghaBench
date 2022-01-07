
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hal_com_data {scalar_t__ sdio_himr; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int SDIO_HIMR_AVAL_MSK ;
 int SDIO_HIMR_RX_REQUEST_MSK ;

void InitInterrupt8723BSdio(struct adapter *adapter)
{
 struct hal_com_data *haldata;


 haldata = GET_HAL_DATA(adapter);
 haldata->sdio_himr = (u32)( SDIO_HIMR_RX_REQUEST_MSK |

        SDIO_HIMR_AVAL_MSK |
        0);
}

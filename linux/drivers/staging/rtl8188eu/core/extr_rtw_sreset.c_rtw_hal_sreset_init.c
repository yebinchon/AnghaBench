
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sreset_priv {int wifi_error_status; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {struct sreset_priv srestpriv; } ;


 int WIFI_STATUS_SUCCESS ;

void rtw_hal_sreset_init(struct adapter *padapter)
{
 struct sreset_priv *psrtpriv = &padapter->HalData->srestpriv;

 psrtpriv->wifi_error_status = WIFI_STATUS_SUCCESS;
}

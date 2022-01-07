
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct adapter {TYPE_2__* HalData; } ;
struct TYPE_3__ {int wifi_error_status; } ;
struct TYPE_4__ {TYPE_1__ srestpriv; } ;



void sreset_set_wifi_error_status(struct adapter *padapter, u32 status)
{
 padapter->HalData->srestpriv.wifi_error_status = status;
}

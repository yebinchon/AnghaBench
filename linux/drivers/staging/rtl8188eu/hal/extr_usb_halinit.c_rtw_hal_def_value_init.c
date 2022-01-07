
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct pwrctrl_priv {int bkeepfwalive; } ;
struct TYPE_3__ {int bIQKInitialized; scalar_t__* ThermalValue_HP; scalar_t__ ThermalValue_HP_index; scalar_t__ TM_Trigger; } ;
struct TYPE_4__ {TYPE_1__ RFCalibrateInfo; } ;
struct hal_data_8188e {int PGMaxGroup; TYPE_2__ odmpriv; scalar_t__ pwrGroupCnt; scalar_t__ LastHMEBoxNum; } ;
struct adapter {struct pwrctrl_priv pwrctrlpriv; struct hal_data_8188e* HalData; } ;


 size_t HP_THERMAL_NUM ;

void rtw_hal_def_value_init(struct adapter *adapt)
{
 struct hal_data_8188e *haldata = adapt->HalData;
 struct pwrctrl_priv *pwrctrlpriv;
 u8 i;

 pwrctrlpriv = &adapt->pwrctrlpriv;


 if (!pwrctrlpriv->bkeepfwalive)
  haldata->LastHMEBoxNum = 0;


 haldata->odmpriv.RFCalibrateInfo.bIQKInitialized = 0;
 haldata->odmpriv.RFCalibrateInfo.TM_Trigger = 0;
 haldata->pwrGroupCnt = 0;
 haldata->PGMaxGroup = 13;
 haldata->odmpriv.RFCalibrateInfo.ThermalValue_HP_index = 0;
 for (i = 0; i < HP_THERMAL_NUM; i++)
  haldata->odmpriv.RFCalibrateInfo.ThermalValue_HP[i] = 0;
}

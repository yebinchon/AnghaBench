
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sw_ant_switch {int SWAS_NoLink_State; scalar_t__ CurAntenna; } ;
struct odm_dm_struct {struct sw_ant_switch DM_SWAT_Table; } ;
struct mlme_priv {int dummy; } ;
struct adapter {TYPE_1__* HalData; struct mlme_priv mlmepriv; } ;
struct TYPE_2__ {scalar_t__ AntDivCfg; struct odm_dm_struct odmpriv; } ;


 scalar_t__ Antenna_A ;
 scalar_t__ Antenna_B ;
 int _FW_LINKED ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int rtw_antenna_select_cmd (struct adapter*,scalar_t__,int) ;

u8 rtw_hal_antdiv_before_linked(struct adapter *Adapter)
{
 struct odm_dm_struct *dm_odm = &Adapter->HalData->odmpriv;
 struct sw_ant_switch *dm_swat_tbl = &dm_odm->DM_SWAT_Table;
 struct mlme_priv *pmlmepriv = &(Adapter->mlmepriv);


 if (Adapter->HalData->AntDivCfg == 0)
  return 0;

 if (check_fwstate(pmlmepriv, _FW_LINKED))
  return 0;

 if (dm_swat_tbl->SWAS_NoLink_State == 0) {

  dm_swat_tbl->SWAS_NoLink_State = 1;
  dm_swat_tbl->CurAntenna = (dm_swat_tbl->CurAntenna == Antenna_A) ? Antenna_B : Antenna_A;

  rtw_antenna_select_cmd(Adapter, dm_swat_tbl->CurAntenna, 0);
  return 1;
 } else {
  dm_swat_tbl->SWAS_NoLink_State = 0;
  return 0;
 }
}

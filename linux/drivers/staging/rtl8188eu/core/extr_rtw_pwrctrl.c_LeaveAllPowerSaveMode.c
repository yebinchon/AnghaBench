
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int LPS_CTRL_LEAVE ;
 int _FW_LINKED ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int rtw_lps_ctrl_wk_cmd (struct adapter*,int ,int ) ;

void LeaveAllPowerSaveMode(struct adapter *Adapter)
{
 struct mlme_priv *pmlmepriv = &(Adapter->mlmepriv);
 u8 enqueue = 0;

 if (check_fwstate(pmlmepriv, _FW_LINKED))
  rtw_lps_ctrl_wk_cmd(Adapter, LPS_CTRL_LEAVE, enqueue);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_ext_priv {int cur_wireless_mode; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int BW_OPMODE_20MHZ ;
 int BW_OPMODE_5G ;
 int REG_BWOPMODE ;






 int rtw_write8 (struct adapter*,int ,int ) ;

__attribute__((used)) static void _InitOperationMode(struct adapter *padapter)
{
 struct mlme_ext_priv *pmlmeext;
 u8 regBwOpMode = 0;

 pmlmeext = &padapter->mlmeextpriv;





 switch (pmlmeext->cur_wireless_mode) {
 case 131:
  regBwOpMode = BW_OPMODE_20MHZ;
  break;
 case 133:

  break;
 case 130:
  regBwOpMode = BW_OPMODE_20MHZ;
  break;
 case 132:
  regBwOpMode = BW_OPMODE_20MHZ;
  break;
 case 129:


  regBwOpMode = BW_OPMODE_20MHZ;
  break;
 case 128:

  regBwOpMode = BW_OPMODE_5G;
  break;

 default:
  break;
 }

 rtw_write8(padapter, REG_BWOPMODE, regBwOpMode);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u1H2CAoacRsvdPageParm ;
struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
struct TYPE_5__ {int pno_in_resume; } ;
struct TYPE_4__ {int LocPNOInfo; int LocGTKEXTMEM; int LocGTKInfo; int LocGTKRsp; int LocArpRsp; int LocRemoteCtrlInfo; int LocNetList; int LocProbeReq; int LocNbrAdv; } ;
typedef TYPE_1__* PRSVDPAGE_LOC ;


 int DBG_871X (char*,int ,...) ;
 int FillH2CCmd8723B (struct adapter*,int ,int,int *) ;
 int H2C_8723B_AOAC_RSVD_PAGE ;
 int H2C_AOAC_RSVDPAGE3 ;
 int H2C_AOAC_RSVDPAGE_LOC_LEN ;
 int RT_PRINT_DATA (int ,int ,char*,int *,int) ;
 int SET_H2CCMD_AOAC_RSVDPAGE_LOC_ARP_RSP (int *,int ) ;
 int SET_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_EXT_MEM (int *,int ) ;
 int SET_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_INFO (int *,int ) ;
 int SET_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_RSP (int *,int ) ;
 int SET_H2CCMD_AOAC_RSVDPAGE_LOC_NLO_INFO (int *,int ) ;
 int SET_H2CCMD_AOAC_RSVDPAGE_LOC_REMOTE_WAKE_CTRL_INFO (int *,int ) ;
 int _FW_LINKED ;
 int _drv_always_ ;
 int _module_hal_init_c_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int memset (int **,int ,int) ;
 int msleep (int) ;
 TYPE_3__* pwrpriv ;

__attribute__((used)) static void rtl8723b_set_FwAoacRsvdPage_cmd(struct adapter *padapter, PRSVDPAGE_LOC rsvdpageloc)
{
}

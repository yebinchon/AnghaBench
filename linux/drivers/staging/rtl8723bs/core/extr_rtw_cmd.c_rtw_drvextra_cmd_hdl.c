
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int dummy; } ;
struct drvextra_cmd_parm {int ec_id; scalar_t__ size; scalar_t__ pbuf; int type; } ;
struct adapter {int dummy; } ;
 int H2C_PARAMETERS_ERROR ;
 int H2C_SUCCESS ;
 int HW_VAR_C2H_HANDLE ;




 int dynamic_chk_wk_hdl (struct adapter*) ;
 int kfree (scalar_t__) ;
 int lps_ctrl_wk_hdl (struct adapter*,int ) ;
 int rtw_btinfo_hdl (struct adapter*,scalar_t__,scalar_t__) ;
 int rtw_chk_hi_queue_hdl (struct adapter*) ;
 int rtw_dm_in_lps_hdl (struct adapter*) ;
 int rtw_dm_ra_mask_hdl (struct adapter*,struct sta_info*) ;
 int rtw_free_assoc_resources (struct adapter*,int) ;
 int rtw_hal_set_hwreg_with_buf (struct adapter*,int ,scalar_t__,scalar_t__) ;
 int rtw_lps_change_dtim_hdl (struct adapter*,int ) ;
 int rtw_ps_processor (struct adapter*) ;
 int rtw_reset_securitypriv (struct adapter*) ;

u8 rtw_drvextra_cmd_hdl(struct adapter *padapter, unsigned char *pbuf)
{
 struct drvextra_cmd_parm *pdrvextra_cmd;

 if (!pbuf)
  return H2C_PARAMETERS_ERROR;

 pdrvextra_cmd = (struct drvextra_cmd_parm *)pbuf;

 switch (pdrvextra_cmd->ec_id) {
 case 133:
  dynamic_chk_wk_hdl(padapter);
  break;
 case 129:
  rtw_ps_processor(padapter);
  break;
 case 130:
  lps_ctrl_wk_hdl(padapter, (u8)pdrvextra_cmd->type);
  break;
 case 135:
  rtw_dm_in_lps_hdl(padapter);
  break;
 case 131:
  rtw_lps_change_dtim_hdl(padapter, (u8)pdrvextra_cmd->type);
  break;
 case 136:
  rtw_chk_hi_queue_hdl(padapter);
  break;

 case 128:
  rtw_reset_securitypriv(padapter);
  break;
 case 132:
  rtw_free_assoc_resources(padapter, 1);
  break;
 case 137:
  rtw_hal_set_hwreg_with_buf(padapter, HW_VAR_C2H_HANDLE, pdrvextra_cmd->pbuf, pdrvextra_cmd->size);
  break;
 case 134:
  rtw_dm_ra_mask_hdl(padapter, (struct sta_info *)pdrvextra_cmd->pbuf);
  break;
 case 138:
  rtw_btinfo_hdl(padapter, pdrvextra_cmd->pbuf, pdrvextra_cmd->size);
  break;
 default:
  break;
 }

 if (pdrvextra_cmd->pbuf && pdrvextra_cmd->size > 0) {
  kfree(pdrvextra_cmd->pbuf);
 }

 return H2C_SUCCESS;
}

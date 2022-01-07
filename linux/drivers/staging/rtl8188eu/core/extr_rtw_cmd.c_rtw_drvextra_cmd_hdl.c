
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drvextra_cmd_parm {int ec_id; scalar_t__ type_size; scalar_t__ pbuf; } ;
struct adapter {int dummy; } ;





 int H2C_PARAMETERS_ERROR ;
 int H2C_SUCCESS ;



 int antenna_select_wk_hdl (struct adapter*,scalar_t__) ;
 int dynamic_chk_wk_hdl (struct adapter*,scalar_t__,scalar_t__) ;
 int kfree (scalar_t__) ;
 int lps_ctrl_wk_hdl (struct adapter*,int ) ;
 int rpt_timer_setting_wk_hdl (struct adapter*,scalar_t__) ;
 int rtw_chk_hi_queue_hdl (struct adapter*) ;
 int rtw_ps_processor (struct adapter*) ;

u8 rtw_drvextra_cmd_hdl(struct adapter *padapter, unsigned char *pbuf)
{
 struct drvextra_cmd_parm *pdrvextra_cmd;

 if (!pbuf)
  return H2C_PARAMETERS_ERROR;

 pdrvextra_cmd = (struct drvextra_cmd_parm *)pbuf;

 switch (pdrvextra_cmd->ec_id) {
 case 131:
  dynamic_chk_wk_hdl(padapter, pdrvextra_cmd->pbuf, pdrvextra_cmd->type_size);
  break;
 case 129:
  rtw_ps_processor(padapter);
  break;
 case 130:
  lps_ctrl_wk_hdl(padapter, (u8)pdrvextra_cmd->type_size);
  break;
 case 128:
  rpt_timer_setting_wk_hdl(padapter, pdrvextra_cmd->type_size);
  break;
 case 133:
  antenna_select_wk_hdl(padapter, pdrvextra_cmd->type_size);
  break;





 default:
  break;
 }

 if (pdrvextra_cmd->pbuf && pdrvextra_cmd->type_size > 0)
  kfree(pdrvextra_cmd->pbuf);

 return H2C_SUCCESS;
}

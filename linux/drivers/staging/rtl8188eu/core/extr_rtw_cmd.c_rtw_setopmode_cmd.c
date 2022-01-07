
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct setopmode_parm {int mode; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int mode; } ;
struct adapter {struct cmd_priv cmdpriv; } ;
typedef enum ndis_802_11_network_infra { ____Placeholder_ndis_802_11_network_infra } ndis_802_11_network_infra ;


 int GFP_KERNEL ;
 int _SetOpMode_CMD_ ;
 int init_h2fwcmd_w_parm_no_rsp (struct setopmode_parm*,struct setopmode_parm*,int ) ;
 int kfree (struct setopmode_parm*) ;
 struct setopmode_parm* kzalloc (int,int ) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct setopmode_parm*) ;

u8 rtw_setopmode_cmd(struct adapter *padapter, enum ndis_802_11_network_infra networktype)
{
 struct cmd_obj *ph2c;
 struct setopmode_parm *psetop;

 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 ph2c = kzalloc(sizeof(*ph2c), GFP_KERNEL);
 psetop = kzalloc(sizeof(*psetop), GFP_KERNEL);
 if (!ph2c || !psetop) {
  kfree(ph2c);
  kfree(psetop);
  return 0;
 }

 init_h2fwcmd_w_parm_no_rsp(ph2c, psetop, _SetOpMode_CMD_);
 psetop->mode = (u8)networktype;

 return rtw_enqueue_cmd(pcmdpriv, ph2c);
}

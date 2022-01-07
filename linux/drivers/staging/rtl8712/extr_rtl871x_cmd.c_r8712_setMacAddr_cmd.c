
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;
struct SetMacAddr_param {int MacAddr; } ;


 int GFP_ATOMIC ;
 int _SetMacAddress_CMD_ ;
 int ether_addr_copy (int ,int *) ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct SetMacAddr_param*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kmalloc (int,int ) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

void r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr)
{
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 struct cmd_obj *ph2c;
 struct SetMacAddr_param *psetMacAddr_para;

 ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c)
  return;
 psetMacAddr_para = kmalloc(sizeof(*psetMacAddr_para), GFP_ATOMIC);
 if (!psetMacAddr_para) {
  kfree(ph2c);
  return;
 }
 init_h2fwcmd_w_parm_no_rsp(ph2c, psetMacAddr_para,
       _SetMacAddress_CMD_);
 ether_addr_copy(psetMacAddr_para->MacAddr, mac_addr);
 r8712_enqueue_cmd(pcmdpriv, ph2c);
}

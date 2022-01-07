
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct setopmode_parm {scalar_t__ mode; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;
typedef enum NDIS_802_11_NETWORK_INFRASTRUCTURE { ____Placeholder_NDIS_802_11_NETWORK_INFRASTRUCTURE } NDIS_802_11_NETWORK_INFRASTRUCTURE ;


 int GFP_ATOMIC ;
 int _SetOpMode_CMD_ ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct setopmode_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kmalloc (int,int ) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

void r8712_setopmode_cmd(struct _adapter *padapter,
   enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype)
{
 struct cmd_obj *ph2c;
 struct setopmode_parm *psetop;

 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c)
  return;
 psetop = kmalloc(sizeof(*psetop), GFP_ATOMIC);
 if (!psetop) {
  kfree(ph2c);
  return;
 }
 init_h2fwcmd_w_parm_no_rsp(ph2c, psetop, _SetOpMode_CMD_);
 psetop->mode = (u8)networktype;
 r8712_enqueue_cmd(pcmdpriv, ph2c);
}

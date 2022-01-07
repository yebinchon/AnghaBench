
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct addBaReq_parm {int tid; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;


 int GEN_CMD_CODE (int ) ;
 int GFP_ATOMIC ;
 int _AddBAReq ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct addBaReq_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kmalloc (int,int ) ;
 int r8712_enqueue_cmd_ex (struct cmd_priv*,struct cmd_obj*) ;

void r8712_addbareq_cmd(struct _adapter *padapter, u8 tid)
{
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 struct cmd_obj *ph2c;
 struct addBaReq_parm *paddbareq_parm;

 ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c)
  return;
 paddbareq_parm = kmalloc(sizeof(*paddbareq_parm), GFP_ATOMIC);
 if (!paddbareq_parm) {
  kfree(ph2c);
  return;
 }
 paddbareq_parm->tid = tid;
 init_h2fwcmd_w_parm_no_rsp(ph2c, paddbareq_parm,
       GEN_CMD_CODE(_AddBAReq));
 r8712_enqueue_cmd_ex(pcmdpriv, ph2c);
}

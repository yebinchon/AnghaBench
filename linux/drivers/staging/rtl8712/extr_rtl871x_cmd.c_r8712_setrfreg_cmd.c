
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct writeRF_parm {int value; int offset; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;


 int ENOMEM ;
 int GEN_CMD_CODE (int ) ;
 int GFP_ATOMIC ;
 int _SetRFReg ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct writeRF_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kmalloc (int,int ) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

int r8712_setrfreg_cmd(struct _adapter *padapter, u8 offset, u32 val)
{
 struct cmd_obj *ph2c;
 struct writeRF_parm *pwriterfparm;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c)
  return -ENOMEM;
 pwriterfparm = kmalloc(sizeof(*pwriterfparm), GFP_ATOMIC);
 if (!pwriterfparm) {
  kfree(ph2c);
  return -ENOMEM;
 }
 init_h2fwcmd_w_parm_no_rsp(ph2c, pwriterfparm, GEN_CMD_CODE(_SetRFReg));
 pwriterfparm->offset = offset;
 pwriterfparm->value = val;
 r8712_enqueue_cmd(pcmdpriv, ph2c);
 return 0;
}

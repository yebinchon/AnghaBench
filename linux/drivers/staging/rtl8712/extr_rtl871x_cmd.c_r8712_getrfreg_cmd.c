
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct readRF_rsp {int dummy; } ;
struct readRF_parm {int offset; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {unsigned char* parmbuf; int cmdsz; int rspsz; int * rsp; int cmdcode; int list; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;


 int ENOMEM ;
 int GEN_CMD_CODE (int ) ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int _GetRFReg ;
 int kfree (struct cmd_obj*) ;
 void* kmalloc (int,int ) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

int r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval)
{
 struct cmd_obj *ph2c;
 struct readRF_parm *prdrfparm;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c)
  return -ENOMEM;
 prdrfparm = kmalloc(sizeof(*prdrfparm), GFP_ATOMIC);
 if (!prdrfparm) {
  kfree(ph2c);
  return -ENOMEM;
 }
 INIT_LIST_HEAD(&ph2c->list);
 ph2c->cmdcode = GEN_CMD_CODE(_GetRFReg);
 ph2c->parmbuf = (unsigned char *)prdrfparm;
 ph2c->cmdsz = sizeof(struct readRF_parm);
 ph2c->rsp = pval;
 ph2c->rspsz = sizeof(struct readRF_rsp);
 prdrfparm->offset = offset;
 r8712_enqueue_cmd(pcmdpriv, ph2c);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct setdatarate_parm {int mac_id; int datarates; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;


 int ENOMEM ;
 int GEN_CMD_CODE (int ) ;
 int GFP_ATOMIC ;
 int NumRates ;
 int _SetDataRate ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct setdatarate_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kmalloc (int,int ) ;
 int memcpy (int ,int *,int ) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset)
{
 struct cmd_obj *ph2c;
 struct setdatarate_parm *pbsetdataratepara;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c)
  return -ENOMEM;
 pbsetdataratepara = kmalloc(sizeof(*pbsetdataratepara), GFP_ATOMIC);
 if (!pbsetdataratepara) {
  kfree(ph2c);
  return -ENOMEM;
 }
 init_h2fwcmd_w_parm_no_rsp(ph2c, pbsetdataratepara,
       GEN_CMD_CODE(_SetDataRate));
 pbsetdataratepara->mac_id = 5;
 memcpy(pbsetdataratepara->datarates, rateset, NumRates);
 r8712_enqueue_cmd(pcmdpriv, ph2c);
 return 0;
}

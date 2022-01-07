
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct addBaReq_parm {int addr; int tid; } ;
struct adapter {struct cmd_priv cmdpriv; } ;


 int ETH_ALEN ;
 int GEN_CMD_CODE (int ) ;
 int _AddBAReq ;
 int _FAIL ;
 int _SUCCESS ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct addBaReq_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 int memcpy (int ,int *,int ) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 void* rtw_zmalloc (int) ;

u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)
{
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 struct cmd_obj *ph2c;
 struct addBaReq_parm *paddbareq_parm;

 u8 res = _SUCCESS;

 ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
 if (ph2c == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }

 paddbareq_parm = rtw_zmalloc(sizeof(struct addBaReq_parm));
 if (paddbareq_parm == ((void*)0)) {
  kfree(ph2c);
  res = _FAIL;
  goto exit;
 }

 paddbareq_parm->tid = tid;
 memcpy(paddbareq_parm->addr, addr, ETH_ALEN);

 init_h2fwcmd_w_parm_no_rsp(ph2c, paddbareq_parm, GEN_CMD_CODE(_AddBAReq));




 res = rtw_enqueue_cmd(pcmdpriv, ph2c);

exit:
 return res;
}

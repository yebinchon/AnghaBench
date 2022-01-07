
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cmd_priv {int cmd_queue_comp; int cmd_queue; struct adapter* padapter; } ;
struct cmd_obj {struct adapter* padapter; } ;
struct adapter {int dummy; } ;


 int _FAIL ;
 int _SUCCESS ;
 int _rtw_enqueue_cmd (int *,struct cmd_obj*) ;
 int complete (int *) ;
 int rtw_cmd_filter (struct cmd_priv*,struct cmd_obj*) ;
 int rtw_free_cmd_obj (struct cmd_obj*) ;

u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
{
 int res = _FAIL;
 struct adapter *padapter = pcmdpriv->padapter;

 if (!cmd_obj)
  goto exit;

 cmd_obj->padapter = padapter;

 res = rtw_cmd_filter(pcmdpriv, cmd_obj);
 if (res == _FAIL) {
  rtw_free_cmd_obj(cmd_obj);
  goto exit;
 }

 res = _rtw_enqueue_cmd(&pcmdpriv->cmd_queue, cmd_obj);

 if (res == _SUCCESS)
  complete(&pcmdpriv->cmd_queue_comp);

exit:

 return res;
}

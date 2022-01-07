
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_priv {int cmd_queue; } ;
struct cmd_obj {int dummy; } ;


 struct cmd_obj* _rtw_dequeue_cmd (int *) ;

struct cmd_obj *rtw_dequeue_cmd(struct cmd_priv *pcmdpriv)
{
 struct cmd_obj *cmd_obj;

 cmd_obj = _rtw_dequeue_cmd(&pcmdpriv->cmd_queue);

 return cmd_obj;
}

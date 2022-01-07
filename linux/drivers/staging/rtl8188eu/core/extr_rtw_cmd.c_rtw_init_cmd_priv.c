
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_priv {int cmd_queue; int terminate_cmdthread_comp; int cmd_queue_comp; } ;


 int _SUCCESS ;
 int _rtw_init_queue (int *) ;
 int init_completion (int *) ;

int rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
{
 init_completion(&pcmdpriv->cmd_queue_comp);
 init_completion(&pcmdpriv->terminate_cmdthread_comp);

 _rtw_init_queue(&pcmdpriv->cmd_queue);
 return _SUCCESS;
}

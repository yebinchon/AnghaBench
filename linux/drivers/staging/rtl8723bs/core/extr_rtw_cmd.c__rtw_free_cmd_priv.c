
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_priv {int sctx_mutex; int rsp_allocated_buf; int cmd_allocated_buf; } ;


 int kfree (int ) ;
 int mutex_destroy (int *) ;

void _rtw_free_cmd_priv(struct cmd_priv *pcmdpriv)
{
 if (pcmdpriv) {
  kfree(pcmdpriv->cmd_allocated_buf);

  kfree(pcmdpriv->rsp_allocated_buf);

  mutex_destroy(&pcmdpriv->sctx_mutex);
 }
}

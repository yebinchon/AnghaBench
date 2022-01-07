
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_priv {int rsp_allocated_buf; int cmd_allocated_buf; } ;


 int kfree (int ) ;

void r8712_free_cmd_priv(struct cmd_priv *pcmdpriv)
{
 if (pcmdpriv) {
  kfree(pcmdpriv->cmd_allocated_buf);
  kfree(pcmdpriv->rsp_allocated_buf);
 }
}

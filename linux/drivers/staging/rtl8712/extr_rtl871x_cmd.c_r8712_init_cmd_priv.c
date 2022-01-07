
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_priv {int cmd_seq; scalar_t__ rsp_cnt; scalar_t__ cmd_done_cnt; scalar_t__ cmd_issued_cnt; void* rsp_allocated_buf; void* rsp_buf; int * cmd_allocated_buf; int * cmd_buf; int cmd_queue; int terminate_cmdthread_comp; int cmd_queue_comp; } ;
typedef int addr_t ;


 int CMDBUFF_ALIGN_SZ ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ MAX_CMDSZ ;
 scalar_t__ MAX_RSPSZ ;
 int _init_queue (int *) ;
 int init_completion (int *) ;
 int kfree (int *) ;
 void* kmalloc (scalar_t__,int ) ;

int r8712_init_cmd_priv(struct cmd_priv *pcmdpriv)
{
 init_completion(&pcmdpriv->cmd_queue_comp);
 init_completion(&pcmdpriv->terminate_cmdthread_comp);

 _init_queue(&(pcmdpriv->cmd_queue));


 pcmdpriv->cmd_seq = 1;
 pcmdpriv->cmd_allocated_buf = kmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ,
           GFP_ATOMIC);
 if (!pcmdpriv->cmd_allocated_buf)
  return -ENOMEM;
 pcmdpriv->cmd_buf = pcmdpriv->cmd_allocated_buf + CMDBUFF_ALIGN_SZ -
       ((addr_t)(pcmdpriv->cmd_allocated_buf) &
       (CMDBUFF_ALIGN_SZ - 1));
 pcmdpriv->rsp_allocated_buf = kmalloc(MAX_RSPSZ + 4, GFP_ATOMIC);
 if (!pcmdpriv->rsp_allocated_buf) {
  kfree(pcmdpriv->cmd_allocated_buf);
  pcmdpriv->cmd_allocated_buf = ((void*)0);
  return -ENOMEM;
 }
 pcmdpriv->rsp_buf = pcmdpriv->rsp_allocated_buf + 4 -
       ((addr_t)(pcmdpriv->rsp_allocated_buf) & 3);
 pcmdpriv->cmd_issued_cnt = 0;
 pcmdpriv->cmd_done_cnt = 0;
 pcmdpriv->rsp_cnt = 0;
 return 0;
}

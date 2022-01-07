
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_priv {int cmd_seq; int sctx_mutex; scalar_t__ rsp_cnt; scalar_t__ cmd_done_cnt; scalar_t__ cmd_issued_cnt; void* rsp_allocated_buf; void* rsp_buf; void* cmd_allocated_buf; void* cmd_buf; int cmd_queue; int terminate_cmdthread_comp; int cmd_queue_comp; } ;
typedef int SIZE_PTR ;


 int CMDBUFF_ALIGN_SZ ;
 int ENOMEM ;
 scalar_t__ MAX_CMDSZ ;
 scalar_t__ MAX_RSPSZ ;
 int _rtw_init_queue (int *) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 void* rtw_zmalloc (scalar_t__) ;

int rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
{
 int res = 0;

 init_completion(&pcmdpriv->cmd_queue_comp);
 init_completion(&pcmdpriv->terminate_cmdthread_comp);

 _rtw_init_queue(&(pcmdpriv->cmd_queue));



 pcmdpriv->cmd_seq = 1;

 pcmdpriv->cmd_allocated_buf = rtw_zmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ);

 if (!pcmdpriv->cmd_allocated_buf) {
  res = -ENOMEM;
  goto exit;
 }

 pcmdpriv->cmd_buf = pcmdpriv->cmd_allocated_buf + CMDBUFF_ALIGN_SZ - ((SIZE_PTR)(pcmdpriv->cmd_allocated_buf) & (CMDBUFF_ALIGN_SZ-1));

 pcmdpriv->rsp_allocated_buf = rtw_zmalloc(MAX_RSPSZ + 4);

 if (!pcmdpriv->rsp_allocated_buf) {
  res = -ENOMEM;
  goto exit;
 }

 pcmdpriv->rsp_buf = pcmdpriv->rsp_allocated_buf + 4 - ((SIZE_PTR)(pcmdpriv->rsp_allocated_buf) & 3);

 pcmdpriv->cmd_issued_cnt = pcmdpriv->cmd_done_cnt = pcmdpriv->rsp_cnt = 0;

 mutex_init(&pcmdpriv->sctx_mutex);
exit:
 return res;
}

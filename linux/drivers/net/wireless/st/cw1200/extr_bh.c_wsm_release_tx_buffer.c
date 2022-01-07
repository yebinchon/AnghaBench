
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input_buffers; } ;
struct cw1200_common {int hw_bufs_used; int bh_evt_wq; TYPE_1__ wsm_caps; } ;


 scalar_t__ WARN_ON (int) ;
 int wake_up (int *) ;

int wsm_release_tx_buffer(struct cw1200_common *priv, int count)
{
 int ret = 0;
 int hw_bufs_used = priv->hw_bufs_used;

 priv->hw_bufs_used -= count;
 if (WARN_ON(priv->hw_bufs_used < 0))
  ret = -1;
 else if (hw_bufs_used >= priv->wsm_caps.input_buffers)
  ret = 1;
 if (!priv->hw_bufs_used)
  wake_up(&priv->bh_evt_wq);
 return ret;
}

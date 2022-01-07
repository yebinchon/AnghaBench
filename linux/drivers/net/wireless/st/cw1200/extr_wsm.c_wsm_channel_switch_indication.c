
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_buf {int dummy; } ;
struct cw1200_common {int channel_switch_done; scalar_t__ channel_switch_in_progress; } ;


 int EINVAL ;
 int WARN_ON (int ) ;
 int WSM_GET32 (struct wsm_buf*) ;
 int wake_up (int *) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

__attribute__((used)) static int wsm_channel_switch_indication(struct cw1200_common *priv,
      struct wsm_buf *buf)
{
 WARN_ON(WSM_GET32(buf));

 priv->channel_switch_in_progress = 0;
 wake_up(&priv->channel_switch_done);

 wsm_unlock_tx(priv);

 return 0;

underflow:
 return -EINVAL;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int WSM_GET32 (struct wsm_buf*) ;
 int cw1200_bh_wakeup (struct cw1200_common*) ;
 int cw1200_debug_txed_multi (struct cw1200_common*,int) ;
 int wsm_release_tx_buffer (struct cw1200_common*,int) ;
 int wsm_tx_confirm (struct cw1200_common*,struct wsm_buf*,int) ;

__attribute__((used)) static int wsm_multi_tx_confirm(struct cw1200_common *priv,
    struct wsm_buf *buf, int link_id)
{
 int ret;
 int count;

 count = WSM_GET32(buf);
 if (WARN_ON(count <= 0))
  return -EINVAL;

 if (count > 1) {

  ret = wsm_release_tx_buffer(priv, count - 1);
  if (ret < 0)
   return ret;
  else if (ret > 0)
   cw1200_bh_wakeup(priv);
 }

 cw1200_debug_txed_multi(priv, count);
 do {
  ret = wsm_tx_confirm(priv, buf, link_id);
 } while (!ret && --count);

 return ret;

underflow:
 WARN_ON(1);
 return -EINVAL;
}

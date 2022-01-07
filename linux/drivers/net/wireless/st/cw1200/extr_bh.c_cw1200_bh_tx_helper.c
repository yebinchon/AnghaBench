
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wsm_hdr {int len; int id; } ;
struct cw1200_common {int device_can_sleep; int wsm_tx_seq; scalar_t__ wsm_enable_wsm_dumps; int hwbus_priv; TYPE_1__* hwbus_ops; int bh_tx; } ;
struct TYPE_2__ {size_t (* align_size ) (int ,size_t) ;} ;


 int BUG_ON (int) ;
 int DUMP_PREFIX_NONE ;
 size_t EFFECTIVE_BUF_SIZE ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WSM_TX_SEQ (int) ;
 int WSM_TX_SEQ_MAX ;
 int __cpu_to_le16 (int) ;
 size_t __le16_to_cpu (int ) ;
 int atomic_add (int,int *) ;
 int cw1200_data_write (struct cw1200_common*,int *,size_t) ;
 int cw1200_debug_tx_burst (struct cw1200_common*) ;
 int cw1200_device_wakeup (struct cw1200_common*) ;
 int pr_debug (char*,size_t) ;
 int pr_err (char*,size_t) ;
 int print_hex_dump_bytes (char*,int ,int *,size_t) ;
 size_t stub1 (int ,size_t) ;
 int wsm_alloc_tx_buffer (struct cw1200_common*) ;
 int wsm_get_tx (struct cw1200_common*,int **,size_t*,int*) ;
 int wsm_release_tx_buffer (struct cw1200_common*,int) ;
 int wsm_txed (struct cw1200_common*,int *) ;

__attribute__((used)) static int cw1200_bh_tx_helper(struct cw1200_common *priv,
          int *pending_tx,
          int *tx_burst)
{
 size_t tx_len;
 u8 *data;
 int ret;
 struct wsm_hdr *wsm;

 if (priv->device_can_sleep) {
  ret = cw1200_device_wakeup(priv);
  if (WARN_ON(ret < 0)) {
   *pending_tx = 1;
   return 0;
  } else if (ret) {
   priv->device_can_sleep = 0;
  } else {
   *pending_tx = 1;
   return 0;
  }
 }

 wsm_alloc_tx_buffer(priv);
 ret = wsm_get_tx(priv, &data, &tx_len, tx_burst);
 if (ret <= 0) {
  wsm_release_tx_buffer(priv, 1);
  if (WARN_ON(ret < 0))
   return ret;
  return 0;
 }

 wsm = (struct wsm_hdr *)data;
 BUG_ON(tx_len < sizeof(*wsm));
 BUG_ON(__le16_to_cpu(wsm->len) != tx_len);

 atomic_add(1, &priv->bh_tx);

 tx_len = priv->hwbus_ops->align_size(
  priv->hwbus_priv, tx_len);


 if (WARN_ON_ONCE(tx_len > EFFECTIVE_BUF_SIZE))
  pr_debug("Write aligned len: %zu\n", tx_len);

 wsm->id &= __cpu_to_le16(0xffff ^ WSM_TX_SEQ(WSM_TX_SEQ_MAX));
 wsm->id |= __cpu_to_le16(WSM_TX_SEQ(priv->wsm_tx_seq));

 if (WARN_ON(cw1200_data_write(priv, data, tx_len))) {
  pr_err("tx blew up, len %zu\n", tx_len);
  wsm_release_tx_buffer(priv, 1);
  return -1;
 }

 if (priv->wsm_enable_wsm_dumps)
  print_hex_dump_bytes("--> ",
         DUMP_PREFIX_NONE,
         data,
         __le16_to_cpu(wsm->len));

 wsm_txed(priv, data);
 priv->wsm_tx_seq = (priv->wsm_tx_seq + 1) & WSM_TX_SEQ_MAX;

 if (*tx_burst > 1) {
  cw1200_debug_tx_burst(priv);
  return 1;
 }

 return 0;
}

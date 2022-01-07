
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
struct wsm_mib_block_ack_policy {int rx_tid; int tx_tid; } ;
struct cw1200_common {int dummy; } ;


 int WSM_MIB_ID_BLOCK_ACK_POLICY ;
 int wsm_write_mib (struct cw1200_common*,int ,struct wsm_mib_block_ack_policy*,int) ;

__attribute__((used)) static inline int wsm_set_block_ack_policy(struct cw1200_common *priv,
        u8 tx_tid_policy,
        u8 rx_tid_policy)
{
 struct wsm_mib_block_ack_policy val = {
  .tx_tid = tx_tid_policy,
  .rx_tid = rx_tid_policy,
 };
 return wsm_write_mib(priv, WSM_MIB_ID_BLOCK_ACK_POLICY, &val,
        sizeof(val));
}

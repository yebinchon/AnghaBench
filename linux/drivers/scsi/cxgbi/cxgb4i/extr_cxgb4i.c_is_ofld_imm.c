
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct fw_ofld_tx_data_wr {int dummy; } ;


 int MAX_IMM_TX_PKT_LEN ;
 int SKCBF_TX_NEED_HDR ;
 int cxgbi_skcb_test_flag (struct sk_buff const*,int ) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static inline bool is_ofld_imm(const struct sk_buff *skb)
{
 int len = skb->len;

 if (likely(cxgbi_skcb_test_flag(skb, SKCBF_TX_NEED_HDR)))
  len += sizeof(struct fw_ofld_tx_data_wr);

 return len <= MAX_IMM_TX_PKT_LEN;
}

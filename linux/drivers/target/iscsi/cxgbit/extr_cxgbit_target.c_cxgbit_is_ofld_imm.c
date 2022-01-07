
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct fw_ofld_tx_data_wr {int dummy; } ;
struct cpl_tx_data_iso {int dummy; } ;


 int MAX_IMM_TX_PKT_LEN ;
 int SKCBF_TX_ISO ;
 int SKCBF_TX_NEED_HDR ;
 int cxgbit_skcb_flags (struct sk_buff const*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int cxgbit_is_ofld_imm(const struct sk_buff *skb)
{
 int length = skb->len;

 if (likely(cxgbit_skcb_flags(skb) & SKCBF_TX_NEED_HDR))
  length += sizeof(struct fw_ofld_tx_data_wr);

 if (likely(cxgbit_skcb_flags(skb) & SKCBF_TX_ISO))
  length += sizeof(struct cpl_tx_data_iso);


 return length <= 256;
}

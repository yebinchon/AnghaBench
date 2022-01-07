
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct debug_priv {int dbg_rx_ampdu_loss_count; } ;



void recv_indicatepkts_pkt_loss_cnt(struct debug_priv *pdbgpriv, u64 prev_seq, u64 current_seq)
{
 if (current_seq < prev_seq)
  pdbgpriv->dbg_rx_ampdu_loss_count += (4096 + current_seq - prev_seq);
 else
  pdbgpriv->dbg_rx_ampdu_loss_count += (current_seq - prev_seq);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxbf_tmfifo {int tx_fifo_size; scalar_t__ rx_base; void* rx_fifo_size; scalar_t__ tx_base; } ;


 void* FIELD_GET (int ,int) ;
 int FIELD_PREP (int,int) ;
 scalar_t__ MLXBF_TMFIFO_RX_CTL ;
 int MLXBF_TMFIFO_RX_CTL__HWM_MASK ;
 int MLXBF_TMFIFO_RX_CTL__LWM_MASK ;
 int MLXBF_TMFIFO_RX_CTL__MAX_ENTRIES_MASK ;
 scalar_t__ MLXBF_TMFIFO_TX_CTL ;
 int MLXBF_TMFIFO_TX_CTL__HWM_MASK ;
 int MLXBF_TMFIFO_TX_CTL__LWM_MASK ;
 int MLXBF_TMFIFO_TX_CTL__MAX_ENTRIES_MASK ;
 int readq (scalar_t__) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static void mlxbf_tmfifo_set_threshold(struct mlxbf_tmfifo *fifo)
{
 u64 ctl;


 ctl = readq(fifo->tx_base + MLXBF_TMFIFO_TX_CTL);
 fifo->tx_fifo_size =
  FIELD_GET(MLXBF_TMFIFO_TX_CTL__MAX_ENTRIES_MASK, ctl);
 ctl = (ctl & ~MLXBF_TMFIFO_TX_CTL__LWM_MASK) |
  FIELD_PREP(MLXBF_TMFIFO_TX_CTL__LWM_MASK,
      fifo->tx_fifo_size / 2);
 ctl = (ctl & ~MLXBF_TMFIFO_TX_CTL__HWM_MASK) |
  FIELD_PREP(MLXBF_TMFIFO_TX_CTL__HWM_MASK,
      fifo->tx_fifo_size - 1);
 writeq(ctl, fifo->tx_base + MLXBF_TMFIFO_TX_CTL);


 ctl = readq(fifo->rx_base + MLXBF_TMFIFO_RX_CTL);
 fifo->rx_fifo_size =
  FIELD_GET(MLXBF_TMFIFO_RX_CTL__MAX_ENTRIES_MASK, ctl);
 ctl = (ctl & ~MLXBF_TMFIFO_RX_CTL__LWM_MASK) |
  FIELD_PREP(MLXBF_TMFIFO_RX_CTL__LWM_MASK, 0);
 ctl = (ctl & ~MLXBF_TMFIFO_RX_CTL__HWM_MASK) |
  FIELD_PREP(MLXBF_TMFIFO_RX_CTL__HWM_MASK, 1);
 writeq(ctl, fifo->rx_base + MLXBF_TMFIFO_RX_CTL);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxbf_tmfifo {scalar_t__ rx_base; } ;


 int FIELD_GET (int ,int ) ;
 scalar_t__ MLXBF_TMFIFO_RX_STS ;
 int MLXBF_TMFIFO_RX_STS__COUNT_MASK ;
 int readq (scalar_t__) ;

__attribute__((used)) static int mlxbf_tmfifo_get_rx_avail(struct mlxbf_tmfifo *fifo)
{
 u64 sts;

 sts = readq(fifo->rx_base + MLXBF_TMFIFO_RX_STS);
 return FIELD_GET(MLXBF_TMFIFO_RX_STS__COUNT_MASK, sts);
}

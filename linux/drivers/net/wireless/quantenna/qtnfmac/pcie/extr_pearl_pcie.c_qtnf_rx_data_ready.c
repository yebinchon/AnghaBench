
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct qtnf_pearl_rx_bd {int info; } ;
struct TYPE_2__ {size_t rx_bd_r_index; } ;
struct qtnf_pcie_pearl_state {struct qtnf_pearl_rx_bd* rx_bd_vbase; TYPE_1__ base; } ;


 int QTN_TXDONE_MASK ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int qtnf_rx_data_ready(struct qtnf_pcie_pearl_state *ps)
{
 u16 index = ps->base.rx_bd_r_index;
 struct qtnf_pearl_rx_bd *rxbd;
 u32 descw;

 rxbd = &ps->rx_bd_vbase[index];
 descw = le32_to_cpu(rxbd->info);

 if (descw & QTN_TXDONE_MASK)
  return 1;

 return 0;
}

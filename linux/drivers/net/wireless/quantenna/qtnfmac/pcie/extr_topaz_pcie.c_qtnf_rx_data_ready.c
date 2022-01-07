
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct qtnf_topaz_rx_bd {int info; } ;
struct TYPE_2__ {size_t rx_bd_r_index; } ;
struct qtnf_pcie_topaz_state {struct qtnf_topaz_rx_bd* rx_bd_vbase; TYPE_1__ base; } ;


 int QTN_BD_EMPTY ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int qtnf_rx_data_ready(struct qtnf_pcie_topaz_state *ts)
{
 u16 index = ts->base.rx_bd_r_index;
 struct qtnf_topaz_rx_bd *rxbd;
 u32 descw;

 rxbd = &ts->rx_bd_vbase[index];
 descw = le32_to_cpu(rxbd->info);

 if (descw & QTN_BD_EMPTY)
  return 0;

 return 1;
}

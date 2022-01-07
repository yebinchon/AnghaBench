
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mu3h_sch_ep_info {int esit; int offset; int num_budget_microframes; scalar_t__* bw_budget_table; } ;
struct mu3h_sch_bw_info {int * bus_bw; } ;


 int XHCI_MTK_MAX_ESIT ;

__attribute__((used)) static void update_bus_bw(struct mu3h_sch_bw_info *sch_bw,
 struct mu3h_sch_ep_info *sch_ep, bool used)
{
 u32 num_esit;
 u32 base;
 int i;
 int j;

 num_esit = XHCI_MTK_MAX_ESIT / sch_ep->esit;
 for (i = 0; i < num_esit; i++) {
  base = sch_ep->offset + i * sch_ep->esit;
  for (j = 0; j < sch_ep->num_budget_microframes; j++) {
   if (used)
    sch_bw->bus_bw[base + j] +=
     sch_ep->bw_budget_table[j];
   else
    sch_bw->bus_bw[base + j] -=
     sch_ep->bw_budget_table[j];
  }
 }
}

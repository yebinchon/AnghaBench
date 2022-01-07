
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd_list {int eqp_bdi; int hwd_bdi; int max_bdi; int num_tabs; int num_bds_table; } ;
struct bdc_ep {struct bdc* bdc; struct bd_list bd_list; } ;
struct bdc {int dev; } ;


 scalar_t__ bdi_to_tbi (struct bdc_ep*,int) ;
 int dev_vdbg (int ,char*,int,...) ;

__attribute__((used)) static int bd_available_ep(struct bdc_ep *ep)
{
 struct bd_list *bd_list = &ep->bd_list;
 int available1, available2;
 struct bdc *bdc = ep->bdc;
 int chain_bd1, chain_bd2;
 int available_bd = 0;

 available1 = available2 = chain_bd1 = chain_bd2 = 0;

 if (bd_list->eqp_bdi == bd_list->hwd_bdi)
  return bd_list->max_bdi - bd_list->num_tabs;





 if (bd_list->hwd_bdi < bd_list->eqp_bdi) {

  available1 = bd_list->max_bdi - bd_list->eqp_bdi;
  available2 = bd_list->hwd_bdi;
  chain_bd1 = available1 / bd_list->num_bds_table;
  chain_bd2 = available2 / bd_list->num_bds_table;
  dev_vdbg(bdc->dev, "chain_bd1:%d chain_bd2:%d\n",
      chain_bd1, chain_bd2);
  available_bd = available1 + available2 - chain_bd1 - chain_bd2;
 } else {

  available1 = bd_list->hwd_bdi - bd_list->eqp_bdi;

  if ((bd_list->hwd_bdi - bd_list->eqp_bdi)
     <= bd_list->num_bds_table) {

   if (!(bdi_to_tbi(ep, bd_list->hwd_bdi)
     == bdi_to_tbi(ep, bd_list->eqp_bdi))) {
    available_bd = available1 - 1;
   }
  } else {
   chain_bd1 = available1 / bd_list->num_bds_table;
   available_bd = available1 - chain_bd1;
  }
 }




 available_bd--;
 dev_vdbg(bdc->dev, "available_bd:%d\n", available_bd);

 return available_bd;
}

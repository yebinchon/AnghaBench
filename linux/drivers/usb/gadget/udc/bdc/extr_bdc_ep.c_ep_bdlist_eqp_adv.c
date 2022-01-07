
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eqp_bdi; int num_bds_table; int max_bdi; } ;
struct bdc_ep {TYPE_1__ bd_list; } ;



__attribute__((used)) static void ep_bdlist_eqp_adv(struct bdc_ep *ep)
{
 ep->bd_list.eqp_bdi++;

 if (((ep->bd_list.eqp_bdi + 1) % ep->bd_list.num_bds_table) == 0)
  ep->bd_list.eqp_bdi++;


 if (ep->bd_list.eqp_bdi == (ep->bd_list.max_bdi + 1))
  ep->bd_list.eqp_bdi = 0;
}

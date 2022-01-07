
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_endpoint {int num_trbs; int pcs; int enqueue; int free_trbs; } ;


 int cdns3_ep_inc_trb (int *,int *,int ) ;

__attribute__((used)) static void cdns3_ep_inc_enq(struct cdns3_endpoint *priv_ep)
{
 priv_ep->free_trbs--;
 cdns3_ep_inc_trb(&priv_ep->enqueue, &priv_ep->pcs, priv_ep->num_trbs);
}

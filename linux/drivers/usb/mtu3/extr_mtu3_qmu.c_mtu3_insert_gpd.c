
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3_request {int dummy; } ;
struct mtu3_ep {scalar_t__ is_in; } ;


 int mtu3_prepare_rx_gpd (struct mtu3_ep*,struct mtu3_request*) ;
 int mtu3_prepare_tx_gpd (struct mtu3_ep*,struct mtu3_request*) ;

void mtu3_insert_gpd(struct mtu3_ep *mep, struct mtu3_request *mreq)
{

 if (mep->is_in)
  mtu3_prepare_tx_gpd(mep, mreq);
 else
  mtu3_prepare_rx_gpd(mep, mreq);
}

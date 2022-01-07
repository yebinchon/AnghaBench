
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3_ep {int gpd_ring; } ;


 int gpd_ring_empty (int *) ;

int mtu3_prepare_transfer(struct mtu3_ep *mep)
{
 return gpd_ring_empty(&mep->gpd_ring);
}

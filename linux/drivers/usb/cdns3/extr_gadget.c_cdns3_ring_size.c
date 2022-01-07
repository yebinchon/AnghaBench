
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_endpoint {int type; } ;


 int TRB_CTRL_RING_SIZE ;
 int TRB_ISO_RING_SIZE ;
 int TRB_RING_SIZE ;



int cdns3_ring_size(struct cdns3_endpoint *priv_ep)
{
 switch (priv_ep->type) {
 case 128:
  return TRB_ISO_RING_SIZE;
 case 129:
  return TRB_CTRL_RING_SIZE;
 default:
  return TRB_RING_SIZE;
 }
}

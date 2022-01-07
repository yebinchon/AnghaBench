
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int alg; } ;
struct xenvif {TYPE_1__ hash; } ;




 int XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER ;
 int XEN_NETIF_CTRL_STATUS_SUCCESS ;

u32 xenvif_set_hash_alg(struct xenvif *vif, u32 alg)
{
 switch (alg) {
 case 129:
 case 128:
  break;

 default:
  return XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER;
 }

 vif->hash.alg = alg;

 return XEN_NETIF_CTRL_STATUS_SUCCESS;
}

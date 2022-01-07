
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; size_t mapping_sel; int * mapping; } ;
struct xenvif {TYPE_1__ hash; } ;


 int XEN_NETBK_MAX_HASH_MAPPING_SIZE ;
 int XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER ;
 int XEN_NETIF_CTRL_STATUS_SUCCESS ;
 int memset (int ,int ,int) ;

u32 xenvif_set_hash_mapping_size(struct xenvif *vif, u32 size)
{
 if (size > XEN_NETBK_MAX_HASH_MAPPING_SIZE)
  return XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER;

 vif->hash.size = size;
 memset(vif->hash.mapping[vif->hash.mapping_sel], 0,
        sizeof(u32) * size);

 return XEN_NETIF_CTRL_STATUS_SUCCESS;
}

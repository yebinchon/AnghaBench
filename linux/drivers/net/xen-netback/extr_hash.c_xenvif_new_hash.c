
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int key; } ;
struct xenvif {TYPE_1__ hash; } ;


 int xen_netif_toeplitz_hash (int ,int,int const*,unsigned int) ;
 int xenvif_add_hash (struct xenvif*,int const*,unsigned int,int ) ;
 scalar_t__ xenvif_hash_cache_size ;

__attribute__((used)) static u32 xenvif_new_hash(struct xenvif *vif, const u8 *data,
      unsigned int len)
{
 u32 val;

 val = xen_netif_toeplitz_hash(vif->hash.key,
          sizeof(vif->hash.key),
          data, len);

 if (xenvif_hash_cache_size != 0)
  xenvif_add_hash(vif, data, len, val);

 return val;
}

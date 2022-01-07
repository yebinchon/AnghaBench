
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int dummy; } ;


 int xenvif_flush_hash (struct xenvif*) ;

void xenvif_deinit_hash(struct xenvif *vif)
{
 xenvif_flush_hash(vif);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_rx_desc {int rd_info; } ;
struct TYPE_2__ {int rx_descs0; } ;
struct vnt_private {struct vnt_rx_desc* aRD0Ring; TYPE_1__ opts; } ;


 int device_free_rx_buf (struct vnt_private*,struct vnt_rx_desc*) ;
 int kfree (int ) ;

__attribute__((used)) static void device_free_rd0_ring(struct vnt_private *priv)
{
 int i;

 for (i = 0; i < priv->opts.rx_descs0; i++) {
  struct vnt_rx_desc *desc = &priv->aRD0Ring[i];

  device_free_rx_buf(priv, desc);
  kfree(desc->rd_info);
 }
}

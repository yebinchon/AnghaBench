
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_tx_desc {struct vnt_td_info* td_info; } ;
struct vnt_td_info {int skb; } ;
struct TYPE_2__ {int* tx_descs; } ;
struct vnt_private {struct vnt_tx_desc* apTD1Rings; TYPE_1__ opts; } ;


 int dev_kfree_skb (int ) ;
 int kfree (struct vnt_td_info*) ;

__attribute__((used)) static void device_free_td1_ring(struct vnt_private *priv)
{
 int i;

 for (i = 0; i < priv->opts.tx_descs[1]; i++) {
  struct vnt_tx_desc *desc = &priv->apTD1Rings[i];
  struct vnt_td_info *td_info = desc->td_info;

  dev_kfree_skb(td_info->skb);
  kfree(desc->td_info);
 }
}

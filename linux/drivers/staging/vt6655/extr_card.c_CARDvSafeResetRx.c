
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* req_count; } ;
struct TYPE_5__ {void* owner; void* res_count; } ;
struct vnt_rx_desc {TYPE_3__ rd1; TYPE_2__ rd0; } ;
struct TYPE_4__ {unsigned int rx_descs0; unsigned int rx_descs1; } ;
struct vnt_private {int rd1_pool_dma; int rd0_pool_dma; int PortOffset; int rx_buf_sz; struct vnt_rx_desc* aRD1Ring; TYPE_1__ opts; struct vnt_rx_desc* aRD0Ring; struct vnt_rx_desc** pCurrRD; } ;


 int MACvRx0PerPktMode (int ) ;
 int MACvRx1PerPktMode (int ) ;
 int MACvSetCurrRx0DescAddr (struct vnt_private*,int ) ;
 int MACvSetCurrRx1DescAddr (struct vnt_private*,int ) ;
 void* OWNED_BY_NIC ;
 void* cpu_to_le16 (int ) ;

void CARDvSafeResetRx(struct vnt_private *priv)
{
 unsigned int uu;
 struct vnt_rx_desc *pDesc;


 priv->pCurrRD[0] = &priv->aRD0Ring[0];
 priv->pCurrRD[1] = &priv->aRD1Ring[0];


 for (uu = 0; uu < priv->opts.rx_descs0; uu++) {
  pDesc = &priv->aRD0Ring[uu];
  pDesc->rd0.res_count = cpu_to_le16(priv->rx_buf_sz);
  pDesc->rd0.owner = OWNED_BY_NIC;
  pDesc->rd1.req_count = cpu_to_le16(priv->rx_buf_sz);
 }


 for (uu = 0; uu < priv->opts.rx_descs1; uu++) {
  pDesc = &priv->aRD1Ring[uu];
  pDesc->rd0.res_count = cpu_to_le16(priv->rx_buf_sz);
  pDesc->rd0.owner = OWNED_BY_NIC;
  pDesc->rd1.req_count = cpu_to_le16(priv->rx_buf_sz);
 }


 MACvRx0PerPktMode(priv->PortOffset);
 MACvRx1PerPktMode(priv->PortOffset);

 MACvSetCurrRx0DescAddr(priv, priv->rd0_pool_dma);

 MACvSetCurrRx1DescAddr(priv, priv->rd1_pool_dma);
}

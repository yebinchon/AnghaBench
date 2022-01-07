
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* owner; } ;
struct vnt_tx_desc {TYPE_2__ td0; } ;
struct TYPE_3__ {unsigned int* tx_descs; } ;
struct vnt_private {int tx_beacon_dma; int PortOffset; int td1_pool_dma; int td0_pool_dma; struct vnt_tx_desc* apTD1Rings; TYPE_1__ opts; struct vnt_tx_desc* apTD0Rings; scalar_t__* iTDUsed; struct vnt_tx_desc** apCurrTD; struct vnt_tx_desc** apTailTD; } ;


 int MACvSetCurrBCNTxDescAddr (int ,int ) ;
 int MACvSetCurrTXDescAddr (int ,struct vnt_private*,int ) ;
 void* OWNED_BY_HOST ;
 int TYPE_AC0DMA ;
 unsigned int TYPE_MAXTD ;
 int TYPE_TXDMA0 ;

void CARDvSafeResetTx(struct vnt_private *priv)
{
 unsigned int uu;
 struct vnt_tx_desc *pCurrTD;


 priv->apTailTD[0] = &priv->apTD0Rings[0];
 priv->apCurrTD[0] = &priv->apTD0Rings[0];

 priv->apTailTD[1] = &priv->apTD1Rings[0];
 priv->apCurrTD[1] = &priv->apTD1Rings[0];

 for (uu = 0; uu < TYPE_MAXTD; uu++)
  priv->iTDUsed[uu] = 0;

 for (uu = 0; uu < priv->opts.tx_descs[0]; uu++) {
  pCurrTD = &priv->apTD0Rings[uu];
  pCurrTD->td0.owner = OWNED_BY_HOST;

 }
 for (uu = 0; uu < priv->opts.tx_descs[1]; uu++) {
  pCurrTD = &priv->apTD1Rings[uu];
  pCurrTD->td0.owner = OWNED_BY_HOST;

 }


 MACvSetCurrTXDescAddr(TYPE_TXDMA0, priv, priv->td0_pool_dma);

 MACvSetCurrTXDescAddr(TYPE_AC0DMA, priv, priv->td1_pool_dma);


 MACvSetCurrBCNTxDescAddr(priv->PortOffset,
     (priv->tx_beacon_dma));
}

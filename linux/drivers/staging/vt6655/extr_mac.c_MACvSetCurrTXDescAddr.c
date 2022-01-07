
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vnt_private {int dummy; } ;


 int MACvSetCurrAC0DescAddrEx (struct vnt_private*,int ) ;
 int MACvSetCurrTx0DescAddrEx (struct vnt_private*,int ) ;
 int TYPE_AC0DMA ;
 int TYPE_TXDMA0 ;

void MACvSetCurrTXDescAddr(int iTxType, struct vnt_private *priv,
      u32 curr_desc_addr)
{
 if (iTxType == TYPE_AC0DMA)
  MACvSetCurrAC0DescAddrEx(priv, curr_desc_addr);
 else if (iTxType == TYPE_TXDMA0)
  MACvSetCurrTx0DescAddrEx(priv, curr_desc_addr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct _adapter {int dummy; } ;


 int RPTMaxCount ;
 int RXERR_RPT ;
 int r8712_read32 (struct _adapter*,int ) ;
 int r8712_write32 (struct _adapter*,int ,int) ;

__attribute__((used)) static u32 GetPhyRxPktCounts(struct _adapter *pAdapter, u32 selbit)
{

 u32 phyrx_set = 0;
 u32 SelectBit;

 SelectBit = selbit << 28;
 phyrx_set |= (SelectBit & 0xF0000000);
 r8712_write32(pAdapter, RXERR_RPT, phyrx_set);

 return r8712_read32(pAdapter, RXERR_RPT) & RPTMaxCount;
}

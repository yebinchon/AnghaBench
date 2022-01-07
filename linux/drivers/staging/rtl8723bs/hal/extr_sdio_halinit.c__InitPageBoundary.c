
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct adapter {int dummy; } ;


 scalar_t__ REG_TRXFF_BNDY ;
 int RX_DMA_BOUNDARY_8723B ;
 int rtw_write16 (struct adapter*,scalar_t__,int ) ;

__attribute__((used)) static void _InitPageBoundary(struct adapter *padapter)
{

 u16 rxff_bndy = RX_DMA_BOUNDARY_8723B;

 rtw_write16(padapter, (REG_TRXFF_BNDY + 2), rxff_bndy);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct adapter {int dummy; } ;


 scalar_t__ MAX_RX_DMA_BUFFER_SIZE_88E ;
 scalar_t__ REG_TRXFF_BNDY ;
 int usb_write16 (struct adapter*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void _InitPageBoundary(struct adapter *Adapter)
{


 u16 rxff_bndy = MAX_RX_DMA_BUFFER_SIZE_88E - 1;

 usb_write16(Adapter, (REG_TRXFF_BNDY + 2), rxff_bndy);
}

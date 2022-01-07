
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 scalar_t__ REG_TDECTRL ;
 scalar_t__ REG_TRXFF_BNDY ;
 scalar_t__ REG_TXPKTBUF_BCNQ_BDNY ;
 scalar_t__ REG_TXPKTBUF_MGQ_BDNY ;
 scalar_t__ REG_TXPKTBUF_WMAC_LBK_BF_HD ;
 int usb_write8 (struct adapter*,scalar_t__,int ) ;

__attribute__((used)) static void _InitTxBufferBoundary(struct adapter *Adapter, u8 txpktbuf_bndy)
{
 usb_write8(Adapter, REG_TXPKTBUF_BCNQ_BDNY, txpktbuf_bndy);
 usb_write8(Adapter, REG_TXPKTBUF_MGQ_BDNY, txpktbuf_bndy);
 usb_write8(Adapter, REG_TXPKTBUF_WMAC_LBK_BF_HD, txpktbuf_bndy);
 usb_write8(Adapter, REG_TRXFF_BNDY, txpktbuf_bndy);
 usb_write8(Adapter, REG_TDECTRL + 1, txpktbuf_bndy);
}

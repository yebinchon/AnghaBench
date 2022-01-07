
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int REG_RD_CTRL ;
 int REG_RD_NAV_NXT ;
 int REG_RD_RESP_PKT_TH ;
 int usb_write16 (struct adapter*,int ,int) ;
 int usb_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void _InitRDGSetting(struct adapter *Adapter)
{
 usb_write8(Adapter, REG_RD_CTRL, 0xFF);
 usb_write16(Adapter, REG_RD_NAV_NXT, 0x200);
 usb_write8(Adapter, REG_RD_RESP_PKT_TH, 0x05);
}

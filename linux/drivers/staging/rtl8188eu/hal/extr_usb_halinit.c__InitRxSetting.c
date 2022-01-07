
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int REG_MACID ;
 int usb_write32 (struct adapter*,int,int) ;

__attribute__((used)) static void _InitRxSetting(struct adapter *Adapter)
{
 usb_write32(Adapter, REG_MACID, 0x87654321);
 usb_write32(Adapter, 0x0700, 0x87654321);
}

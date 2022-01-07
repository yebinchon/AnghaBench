
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int REG_EDCA_BE_PARAM ;
 int REG_EDCA_BK_PARAM ;
 int REG_EDCA_VI_PARAM ;
 int REG_EDCA_VO_PARAM ;
 int REG_MAC_SPEC_SIFS ;
 int REG_SIFS_CTX ;
 int REG_SIFS_TRX ;
 int REG_SPEC_SIFS ;
 int usb_write16 (struct adapter*,int ,int) ;
 int usb_write32 (struct adapter*,int ,int) ;

__attribute__((used)) static void _InitEDCA(struct adapter *Adapter)
{

 usb_write16(Adapter, REG_SPEC_SIFS, 0x100a);
 usb_write16(Adapter, REG_MAC_SPEC_SIFS, 0x100a);


 usb_write16(Adapter, REG_SIFS_CTX, 0x100a);


 usb_write16(Adapter, REG_SIFS_TRX, 0x100a);


 usb_write32(Adapter, REG_EDCA_BE_PARAM, 0x005EA42B);
 usb_write32(Adapter, REG_EDCA_BK_PARAM, 0x0000A44F);
 usb_write32(Adapter, REG_EDCA_VI_PARAM, 0x005EA324);
 usb_write32(Adapter, REG_EDCA_VO_PARAM, 0x002FA226);
}

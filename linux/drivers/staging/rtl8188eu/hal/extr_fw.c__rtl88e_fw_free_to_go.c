
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int EIO ;
 int FWDL_ChkSum_rpt ;
 int FW_8192C_POLLING_DELAY ;
 int MCUFWDL_RDY ;
 scalar_t__ POLLING_READY_TIMEOUT_COUNT ;
 int REG_MCUFWDL ;
 int WINTINI_RDY ;
 int rtl88e_firmware_selfreset (struct adapter*) ;
 int udelay (int ) ;
 int usb_read32 (struct adapter*,int ) ;
 int usb_write32 (struct adapter*,int ,int) ;

__attribute__((used)) static int _rtl88e_fw_free_to_go(struct adapter *adapt)
{
 int err = -EIO;
 u32 counter = 0;
 u32 value32;

 do {
  value32 = usb_read32(adapt, REG_MCUFWDL);
  if (value32 & FWDL_ChkSum_rpt)
   break;
 } while (counter++ < POLLING_READY_TIMEOUT_COUNT);

 if (counter >= POLLING_READY_TIMEOUT_COUNT)
  goto exit;

 value32 = usb_read32(adapt, REG_MCUFWDL);
 value32 |= MCUFWDL_RDY;
 value32 &= ~WINTINI_RDY;
 usb_write32(adapt, REG_MCUFWDL, value32);

 rtl88e_firmware_selfreset(adapt);
 counter = 0;

 do {
  value32 = usb_read32(adapt, REG_MCUFWDL);
  if (value32 & WINTINI_RDY) {
   err = 0;
   goto exit;
  }

  udelay(FW_8192C_POLLING_DELAY);

 } while (counter++ < POLLING_READY_TIMEOUT_COUNT);

exit:
 return err;
}

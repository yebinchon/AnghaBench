
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int H2M_MAILBOX_CID ;
 int H2M_MAILBOX_CID_CMD0 ;
 int H2M_MAILBOX_CID_CMD1 ;
 int H2M_MAILBOX_CID_CMD2 ;
 int H2M_MAILBOX_CID_CMD3 ;
 int H2M_MAILBOX_STATUS ;
 int REGISTER_BUSY_DELAY ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 scalar_t__ const rt2x00_get_field32 (int ,int ) ;
 scalar_t__ rt2x00_is_soc (struct rt2x00_dev*) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void rt2800pci_mcu_status(struct rt2x00_dev *rt2x00dev, const u8 token)
{
 unsigned int i;
 u32 reg;




 if (rt2x00_is_soc(rt2x00dev))
  return;

 for (i = 0; i < 200; i++) {
  reg = rt2x00mmio_register_read(rt2x00dev, H2M_MAILBOX_CID);

  if ((rt2x00_get_field32(reg, H2M_MAILBOX_CID_CMD0) == token) ||
      (rt2x00_get_field32(reg, H2M_MAILBOX_CID_CMD1) == token) ||
      (rt2x00_get_field32(reg, H2M_MAILBOX_CID_CMD2) == token) ||
      (rt2x00_get_field32(reg, H2M_MAILBOX_CID_CMD3) == token))
   break;

  udelay(REGISTER_BUSY_DELAY);
 }

 if (i == 200)
  rt2x00_err(rt2x00dev, "MCU request failed, no response from hardware\n");

 rt2x00mmio_register_write(rt2x00dev, H2M_MAILBOX_STATUS, ~0);
 rt2x00mmio_register_write(rt2x00dev, H2M_MAILBOX_CID, ~0);
}

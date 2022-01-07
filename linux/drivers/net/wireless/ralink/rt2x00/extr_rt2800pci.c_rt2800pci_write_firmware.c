
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int FIRMWARE_IMAGE_BASE ;
 int H2M_BBP_AGENT ;
 int H2M_MAILBOX_CSR ;
 int PBF_SYS_CTRL ;
 int PBF_SYS_CTRL_HOST_RAM_WRITE ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00mmio_register_multiwrite (struct rt2x00_dev*,int ,int const*,size_t const) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;

__attribute__((used)) static int rt2800pci_write_firmware(struct rt2x00_dev *rt2x00dev,
        const u8 *data, const size_t len)
{
 u32 reg;




 reg = 0;
 rt2x00_set_field32(&reg, PBF_SYS_CTRL_HOST_RAM_WRITE, 1);
 rt2x00mmio_register_write(rt2x00dev, PBF_SYS_CTRL, reg);




 rt2x00mmio_register_multiwrite(rt2x00dev, FIRMWARE_IMAGE_BASE,
           data, len);

 rt2x00mmio_register_write(rt2x00dev, PBF_SYS_CTRL, 0x00000);
 rt2x00mmio_register_write(rt2x00dev, PBF_SYS_CTRL, 0x00001);

 rt2x00mmio_register_write(rt2x00dev, H2M_BBP_AGENT, 0);
 rt2x00mmio_register_write(rt2x00dev, H2M_MAILBOX_CSR, 0);

 return 0;
}

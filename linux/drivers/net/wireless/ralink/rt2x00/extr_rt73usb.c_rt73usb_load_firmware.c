
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rt2x00_dev {int dummy; } ;


 int EBUSY ;
 int FIRMWARE_IMAGE_BASE ;
 int MAC_CSR0 ;
 int REGISTER_TIMEOUT_FIRMWARE ;
 int USB_DEVICE_MODE ;
 int USB_MODE_FIRMWARE ;
 int msleep (int) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 int rt2x00usb_register_multiwrite (struct rt2x00_dev*,int ,int const*,size_t const) ;
 scalar_t__ rt2x00usb_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00usb_vendor_request_sw (struct rt2x00_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static int rt73usb_load_firmware(struct rt2x00_dev *rt2x00dev,
     const u8 *data, const size_t len)
{
 unsigned int i;
 int status;
 u32 reg;




 for (i = 0; i < 100; i++) {
  reg = rt2x00usb_register_read(rt2x00dev, MAC_CSR0);
  if (reg)
   break;
  msleep(1);
 }

 if (!reg) {
  rt2x00_err(rt2x00dev, "Unstable hardware\n");
  return -EBUSY;
 }




 rt2x00usb_register_multiwrite(rt2x00dev, FIRMWARE_IMAGE_BASE, data, len);





 status = rt2x00usb_vendor_request_sw(rt2x00dev, USB_DEVICE_MODE,
          0, USB_MODE_FIRMWARE,
          REGISTER_TIMEOUT_FIRMWARE);
 if (status < 0) {
  rt2x00_err(rt2x00dev, "Failed to write Firmware to device\n");
  return status;
 }

 return 0;
}

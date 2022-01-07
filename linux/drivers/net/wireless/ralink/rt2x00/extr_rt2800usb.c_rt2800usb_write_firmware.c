
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {int cap_flags; } ;


 int FIRMWARE_IMAGE_BASE ;
 int H2M_MAILBOX_CID ;
 int H2M_MAILBOX_CSR ;
 int H2M_MAILBOX_STATUS ;
 int REGISTER_TIMEOUT_FIRMWARE ;
 int REQUIRE_FIRMWARE ;
 int RT2860 ;
 int RT2872 ;
 int RT3070 ;
 int USB_DEVICE_MODE ;
 int USB_MODE_FIRMWARE ;
 int __clear_bit (int ,int *) ;
 int msleep (int) ;
 int rt2800usb_autorun_detect (struct rt2x00_dev*) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 int rt2x00_info (struct rt2x00_dev*,char*) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 int rt2x00usb_register_multiwrite (struct rt2x00_dev*,int ,int const*,int) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00usb_vendor_request_sw (struct rt2x00_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static int rt2800usb_write_firmware(struct rt2x00_dev *rt2x00dev,
        const u8 *data, const size_t len)
{
 int status;
 u32 offset;
 u32 length;
 int retval;




 if (rt2x00_rt(rt2x00dev, RT2860) ||
     rt2x00_rt(rt2x00dev, RT2872) ||
     rt2x00_rt(rt2x00dev, RT3070)) {
  offset = 0;
  length = 4096;
 } else {
  offset = 4096;
  length = 4096;
 }




 retval = rt2800usb_autorun_detect(rt2x00dev);
 if (retval < 0)
  return retval;
 if (retval) {
  rt2x00_info(rt2x00dev,
       "Firmware loading not required - NIC in AutoRun mode\n");
  __clear_bit(REQUIRE_FIRMWARE, &rt2x00dev->cap_flags);
 } else {
  rt2x00usb_register_multiwrite(rt2x00dev, FIRMWARE_IMAGE_BASE,
           data + offset, length);
 }

 rt2x00usb_register_write(rt2x00dev, H2M_MAILBOX_CID, ~0);
 rt2x00usb_register_write(rt2x00dev, H2M_MAILBOX_STATUS, ~0);





 status = rt2x00usb_vendor_request_sw(rt2x00dev, USB_DEVICE_MODE,
          0, USB_MODE_FIRMWARE,
          REGISTER_TIMEOUT_FIRMWARE);
 if (status < 0) {
  rt2x00_err(rt2x00dev, "Failed to write Firmware to device\n");
  return status;
 }

 msleep(10);
 rt2x00usb_register_write(rt2x00dev, H2M_MAILBOX_CSR, 0);

 return 0;
}

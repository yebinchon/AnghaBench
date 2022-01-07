
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;


 int FW_BAD_CRC ;
 int FW_BAD_LENGTH ;
 int FW_BAD_VERSION ;
 int FW_OK ;
 int RT2860 ;
 int RT2872 ;
 int RT3070 ;
 int RT3290 ;
 int rt2800_check_firmware_crc (int const*,size_t) ;
 scalar_t__ rt2x00_is_usb (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;

int rt2800_check_firmware(struct rt2x00_dev *rt2x00dev,
     const u8 *data, const size_t len)
{
 size_t offset = 0;
 size_t fw_len;
 bool multiple;
 if (rt2x00_is_usb(rt2x00dev) || rt2x00_rt(rt2x00dev, RT3290))
  fw_len = 4096;
 else
  fw_len = 8192;

 multiple = 1;



 if (len != fw_len && (!multiple || (len % fw_len) != 0))
  return FW_BAD_LENGTH;





 if (rt2x00_is_usb(rt2x00dev) &&
     !rt2x00_rt(rt2x00dev, RT2860) &&
     !rt2x00_rt(rt2x00dev, RT2872) &&
     !rt2x00_rt(rt2x00dev, RT3070) &&
     ((len / fw_len) == 1))
  return FW_BAD_VERSION;





 while (offset < len) {
  if (!rt2800_check_firmware_crc(data + offset, fw_len))
   return FW_BAD_CRC;

  offset += fw_len;
 }

 return FW_OK;
}

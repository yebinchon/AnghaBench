
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
typedef int reg ;
typedef int __le32 ;


 int REGISTER_TIMEOUT ;
 int USB_MULTI_READ ;
 int USB_VENDOR_REQUEST_IN ;
 int le32_to_cpu (int ) ;
 int rt2x00usb_vendor_req_buff_lock (struct rt2x00_dev*,int ,int ,unsigned int const,int *,int,int ) ;

__attribute__((used)) static inline u32 rt2x00usb_register_read_lock(struct rt2x00_dev *rt2x00dev,
            const unsigned int offset)
{
 __le32 reg = 0;
 rt2x00usb_vendor_req_buff_lock(rt2x00dev, USB_MULTI_READ,
           USB_VENDOR_REQUEST_IN, offset,
           &reg, sizeof(reg), REGISTER_TIMEOUT);
 return le32_to_cpu(reg);
}

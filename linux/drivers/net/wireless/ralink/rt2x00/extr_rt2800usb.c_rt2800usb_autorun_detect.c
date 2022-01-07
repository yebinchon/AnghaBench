
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
typedef int __le32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int REGISTER_TIMEOUT_FIRMWARE ;
 int USB_DEVICE_MODE ;
 int USB_MODE_AUTORUN ;
 int USB_VENDOR_REQUEST_IN ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int rt2x00usb_vendor_request (struct rt2x00_dev*,int ,int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int rt2800usb_autorun_detect(struct rt2x00_dev *rt2x00dev)
{
 __le32 *reg;
 u32 fw_mode;
 int ret;

 reg = kmalloc(sizeof(*reg), GFP_KERNEL);
 if (reg == ((void*)0))
  return -ENOMEM;





 ret = rt2x00usb_vendor_request(rt2x00dev, USB_DEVICE_MODE,
           USB_VENDOR_REQUEST_IN, 0,
           USB_MODE_AUTORUN, reg, sizeof(*reg),
           REGISTER_TIMEOUT_FIRMWARE);
 fw_mode = le32_to_cpu(*reg);
 kfree(reg);
 if (ret < 0)
  return ret;

 if ((fw_mode & 0x00000003) == 2)
  return 1;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resp; int resp_cmpl; } ;
struct mt7601u_dev {TYPE_1__ mcu; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MCU_RESP_URB_SIZE ;
 int MT_EP_IN_CMD_RESP ;
 int Q_SELECT ;
 int USB_DIR_IN ;
 int init_completion (int *) ;
 int mt7601u_complete_urb ;
 int mt7601u_mcu_function_select (struct mt7601u_dev*,int ,int) ;
 scalar_t__ mt7601u_usb_alloc_buf (struct mt7601u_dev*,int ,int *) ;
 int mt7601u_usb_free_buf (struct mt7601u_dev*,int *) ;
 int mt7601u_usb_submit_buf (struct mt7601u_dev*,int ,int ,int *,int ,int ,int *) ;

int mt7601u_mcu_cmd_init(struct mt7601u_dev *dev)
{
 int ret;

 ret = mt7601u_mcu_function_select(dev, Q_SELECT, 1);
 if (ret)
  return ret;

 init_completion(&dev->mcu.resp_cmpl);
 if (mt7601u_usb_alloc_buf(dev, MCU_RESP_URB_SIZE, &dev->mcu.resp)) {
  mt7601u_usb_free_buf(dev, &dev->mcu.resp);
  return -ENOMEM;
 }

 ret = mt7601u_usb_submit_buf(dev, USB_DIR_IN, MT_EP_IN_CMD_RESP,
         &dev->mcu.resp, GFP_KERNEL,
         mt7601u_complete_urb, &dev->mcu.resp_cmpl);
 if (ret) {
  mt7601u_usb_free_buf(dev, &dev->mcu.resp);
  return ret;
 }

 return 0;
}

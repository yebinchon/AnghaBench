
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int urb; } ;
struct TYPE_3__ {TYPE_2__ resp; } ;
struct mt7601u_dev {TYPE_1__ mcu; } ;


 int mt7601u_usb_free_buf (struct mt7601u_dev*,TYPE_2__*) ;
 int usb_kill_urb (int ) ;

void mt7601u_mcu_cmd_deinit(struct mt7601u_dev *dev)
{
 usb_kill_urb(dev->mcu.resp.urb);
 mt7601u_usb_free_buf(dev, &dev->mcu.resp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial {TYPE_1__* dev; } ;
struct usb_irda_cs_descriptor {int bMaxUnicastList; int bIrdaRateSniff; int bmAdditionalBOFs; int wBaudRate; int bmMinTurnaroundTime; int bmWindowSize; int bmDataSize; int bcdSpecRevision; int bDescriptorType; int bLength; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int __le16_to_cpu (int ) ;
 int dev_dbg (struct device*,char*,int ) ;

__attribute__((used)) static inline void irda_usb_dump_class_desc(struct usb_serial *serial,
         struct usb_irda_cs_descriptor *desc)
{
 struct device *dev = &serial->dev->dev;

 dev_dbg(dev, "bLength=%x\n", desc->bLength);
 dev_dbg(dev, "bDescriptorType=%x\n", desc->bDescriptorType);
 dev_dbg(dev, "bcdSpecRevision=%x\n", __le16_to_cpu(desc->bcdSpecRevision));
 dev_dbg(dev, "bmDataSize=%x\n", desc->bmDataSize);
 dev_dbg(dev, "bmWindowSize=%x\n", desc->bmWindowSize);
 dev_dbg(dev, "bmMinTurnaroundTime=%d\n", desc->bmMinTurnaroundTime);
 dev_dbg(dev, "wBaudRate=%x\n", __le16_to_cpu(desc->wBaudRate));
 dev_dbg(dev, "bmAdditionalBOFs=%x\n", desc->bmAdditionalBOFs);
 dev_dbg(dev, "bIrdaRateSniff=%x\n", desc->bIrdaRateSniff);
 dev_dbg(dev, "bMaxUnicastList=%x\n", desc->bMaxUnicastList);
}

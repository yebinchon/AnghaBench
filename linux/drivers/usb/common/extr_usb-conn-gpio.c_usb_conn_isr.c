
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_conn_info {int debounce_jiffies; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int usb_conn_queue_dwork (struct usb_conn_info*,int ) ;

__attribute__((used)) static irqreturn_t usb_conn_isr(int irq, void *dev_id)
{
 struct usb_conn_info *info = dev_id;

 usb_conn_queue_dwork(info, info->debounce_jiffies);

 return IRQ_HANDLED;
}

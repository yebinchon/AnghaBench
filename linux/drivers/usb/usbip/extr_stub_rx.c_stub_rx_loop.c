
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_device {int dummy; } ;


 int kthread_should_stop () ;
 int stub_rx_pdu (struct usbip_device*) ;
 scalar_t__ usbip_event_happened (struct usbip_device*) ;

int stub_rx_loop(void *data)
{
 struct usbip_device *ud = data;

 while (!kthread_should_stop()) {
  if (usbip_event_happened(ud))
   break;

  stub_rx_pdu(ud);
 }

 return 0;
}

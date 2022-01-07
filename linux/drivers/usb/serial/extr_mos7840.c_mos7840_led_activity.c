
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct moschip_port {int led_timer1; int flags; } ;


 int LED_ON_MS ;
 int MODEM_CONTROL_REGISTER ;
 int MOS7840_FLAG_LED_BUSY ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mos7840_set_led_async (struct moschip_port*,int,int ) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;
 struct moschip_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void mos7840_led_activity(struct usb_serial_port *port)
{
 struct moschip_port *mos7840_port = usb_get_serial_port_data(port);

 if (test_and_set_bit_lock(MOS7840_FLAG_LED_BUSY, &mos7840_port->flags))
  return;

 mos7840_set_led_async(mos7840_port, 0x0301, MODEM_CONTROL_REGISTER);
 mod_timer(&mos7840_port->led_timer1,
    jiffies + msecs_to_jiffies(LED_ON_MS));
}

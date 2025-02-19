
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct usb_serial_port {int dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct f81534_serial_private {size_t* conf_data; } ;
struct f81534_port_private {size_t phy_num; } ;
struct f81534_port_out_pin {TYPE_1__* pin; } ;
struct TYPE_2__ {int reg_mask; int reg_addr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 size_t BIT (int) ;
 size_t F81534_CONF_GPIO_RS232 ;
 size_t F81534_CONF_GPIO_SHUTDOWN ;
 size_t F81534_CONF_INIT_GPIO_OFFSET ;
 size_t F81534_CONF_WORK_GPIO_OFFSET ;
 int dev_dbg (int *,char*,size_t) ;
 struct f81534_port_out_pin* f81534_port_out_pins ;
 int f81534_set_mask_register (struct usb_serial*,int ,int ,int ) ;
 struct f81534_serial_private* usb_get_serial_data (struct usb_serial*) ;
 struct f81534_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int f81534_set_port_output_pin(struct usb_serial_port *port)
{
 struct f81534_serial_private *serial_priv;
 struct f81534_port_private *port_priv;
 struct usb_serial *serial;
 const struct f81534_port_out_pin *pins;
 int status;
 int i;
 u8 value;
 u8 idx;

 serial = port->serial;
 serial_priv = usb_get_serial_data(serial);
 port_priv = usb_get_serial_port_data(port);

 idx = F81534_CONF_INIT_GPIO_OFFSET + port_priv->phy_num;
 value = serial_priv->conf_data[idx];
 if (value >= F81534_CONF_GPIO_SHUTDOWN) {




  idx = F81534_CONF_WORK_GPIO_OFFSET + port_priv->phy_num;
  value = serial_priv->conf_data[idx];
  if (value >= F81534_CONF_GPIO_SHUTDOWN)
   value = F81534_CONF_GPIO_RS232;
 }

 pins = &f81534_port_out_pins[port_priv->phy_num];

 for (i = 0; i < ARRAY_SIZE(pins->pin); ++i) {
  status = f81534_set_mask_register(serial,
    pins->pin[i].reg_addr, pins->pin[i].reg_mask,
    value & BIT(i) ? pins->pin[i].reg_mask : 0);
  if (status)
   return status;
 }

 dev_dbg(&port->dev, "Output pin (M0/M1/M2): %d\n", value);
 return 0;
}

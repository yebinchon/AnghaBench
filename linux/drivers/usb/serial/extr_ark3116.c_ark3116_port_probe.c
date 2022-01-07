
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct ark3116_private {int quot; int lcr; scalar_t__ irda; scalar_t__ mcr; scalar_t__ hcr; int status_lock; int hw_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UART_DLL ;
 int UART_DLM ;
 int UART_FCR ;
 int UART_IER ;
 int UART_LCR ;
 int UART_LCR_DLAB ;
 int UART_LCR_WLEN8 ;
 int UART_MCR ;
 int ark3116_write_reg (struct usb_serial*,int,int) ;
 int calc_divisor (int) ;
 int dev_info (int *,char*,char*) ;
 scalar_t__ is_irda (struct usb_serial*) ;
 struct ark3116_private* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct ark3116_private*) ;

__attribute__((used)) static int ark3116_port_probe(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 struct ark3116_private *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 mutex_init(&priv->hw_lock);
 spin_lock_init(&priv->status_lock);

 priv->irda = is_irda(serial);

 usb_set_serial_port_data(port, priv);


 ark3116_write_reg(serial, UART_IER, 0);

 ark3116_write_reg(serial, UART_FCR, 0);

 priv->hcr = 0;
 ark3116_write_reg(serial, 0x8 , 0);

 priv->mcr = 0;
 ark3116_write_reg(serial, UART_MCR, 0);

 if (!(priv->irda)) {
  ark3116_write_reg(serial, 0xb , 0);
 } else {
  ark3116_write_reg(serial, 0xb , 1);
  ark3116_write_reg(serial, 0xc , 0);
  ark3116_write_reg(serial, 0xd , 0x41);
  ark3116_write_reg(serial, 0xa , 1);
 }


 ark3116_write_reg(serial, UART_LCR, UART_LCR_DLAB);


 priv->quot = calc_divisor(9600);
 ark3116_write_reg(serial, UART_DLL, priv->quot & 0xff);
 ark3116_write_reg(serial, UART_DLM, (priv->quot>>8) & 0xff);

 priv->lcr = UART_LCR_WLEN8;
 ark3116_write_reg(serial, UART_LCR, UART_LCR_WLEN8);

 ark3116_write_reg(serial, 0xe, 0);

 if (priv->irda)
  ark3116_write_reg(serial, 0x9, 0);

 dev_info(&port->dev, "using %s mode\n", priv->irda ? "IrDA" : "RS232");

 return 0;
}

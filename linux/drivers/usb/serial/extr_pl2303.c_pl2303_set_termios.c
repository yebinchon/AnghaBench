
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct ktermios {int c_cflag; } ;
struct tty_struct {struct ktermios termios; } ;
struct pl2303_serial_private {int quirks; int type; } ;
struct pl2303_private {int line_control; int lock; int line_settings; } ;


 int B0 ;
 int CBAUD ;
 int CONTROL_DTR ;
 int CONTROL_RTS ;




 int C_BAUD (struct tty_struct*) ;
 scalar_t__ C_CMSPAR (struct tty_struct*) ;
 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 int const C_CSIZE (struct tty_struct*) ;
 scalar_t__ C_CSTOPB (struct tty_struct*) ;
 scalar_t__ C_PARENB (struct tty_struct*) ;
 scalar_t__ C_PARODD (struct tty_struct*) ;
 int GFP_KERNEL ;
 int PL2303_FLOWCTRL_MASK ;
 int PL2303_QUIRK_LEGACY ;
 int dev_dbg (int *,char*,...) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 scalar_t__ memcmp (unsigned char*,int ,int) ;
 int memcpy (int ,unsigned char*,int) ;
 scalar_t__ pl2303_enable_xonxoff (struct tty_struct*,int ) ;
 int pl2303_encode_baud_rate (struct tty_struct*,struct usb_serial_port*,unsigned char*) ;
 int pl2303_get_line_request (struct usb_serial_port*,unsigned char*) ;
 int pl2303_set_control_lines (struct usb_serial_port*,int) ;
 int pl2303_set_line_request (struct usb_serial_port*,unsigned char*) ;
 int pl2303_termios_change (struct ktermios*,struct ktermios*) ;
 int pl2303_update_reg (struct usb_serial*,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pl2303_serial_private* usb_get_serial_data (struct usb_serial*) ;
 struct pl2303_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void pl2303_set_termios(struct tty_struct *tty,
  struct usb_serial_port *port, struct ktermios *old_termios)
{
 struct usb_serial *serial = port->serial;
 struct pl2303_serial_private *spriv = usb_get_serial_data(serial);
 struct pl2303_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 unsigned char *buf;
 int ret;
 u8 control;

 if (old_termios && !pl2303_termios_change(&tty->termios, old_termios))
  return;

 buf = kzalloc(7, GFP_KERNEL);
 if (!buf) {

  if (old_termios)
   tty->termios = *old_termios;
  return;
 }

 pl2303_get_line_request(port, buf);

 switch (C_CSIZE(tty)) {
 case 131:
  buf[6] = 5;
  break;
 case 130:
  buf[6] = 6;
  break;
 case 129:
  buf[6] = 7;
  break;
 default:
 case 128:
  buf[6] = 8;
 }
 dev_dbg(&port->dev, "data bits = %d\n", buf[6]);


 pl2303_encode_baud_rate(tty, port, &buf[0]);




 if (C_CSTOPB(tty)) {




  if (C_CSIZE(tty) == 131) {
   buf[4] = 1;
   dev_dbg(&port->dev, "stop bits = 1.5\n");
  } else {
   buf[4] = 2;
   dev_dbg(&port->dev, "stop bits = 2\n");
  }
 } else {
  buf[4] = 0;
  dev_dbg(&port->dev, "stop bits = 1\n");
 }

 if (C_PARENB(tty)) {





  if (C_PARODD(tty)) {
   if (C_CMSPAR(tty)) {
    buf[5] = 3;
    dev_dbg(&port->dev, "parity = mark\n");
   } else {
    buf[5] = 1;
    dev_dbg(&port->dev, "parity = odd\n");
   }
  } else {
   if (C_CMSPAR(tty)) {
    buf[5] = 4;
    dev_dbg(&port->dev, "parity = space\n");
   } else {
    buf[5] = 2;
    dev_dbg(&port->dev, "parity = even\n");
   }
  }
 } else {
  buf[5] = 0;
  dev_dbg(&port->dev, "parity = none\n");
 }
 if (!old_termios || memcmp(buf, priv->line_settings, 7)) {
  ret = pl2303_set_line_request(port, buf);
  if (!ret)
   memcpy(priv->line_settings, buf, 7);
 }


 spin_lock_irqsave(&priv->lock, flags);
 control = priv->line_control;
 if (C_BAUD(tty) == B0)
  priv->line_control &= ~(CONTROL_DTR | CONTROL_RTS);
 else if (old_termios && (old_termios->c_cflag & CBAUD) == B0)
  priv->line_control |= (CONTROL_DTR | CONTROL_RTS);
 if (control != priv->line_control) {
  control = priv->line_control;
  spin_unlock_irqrestore(&priv->lock, flags);
  pl2303_set_control_lines(port, control);
 } else {
  spin_unlock_irqrestore(&priv->lock, flags);
 }

 if (C_CRTSCTS(tty)) {
  if (spriv->quirks & PL2303_QUIRK_LEGACY)
   pl2303_update_reg(serial, 0, PL2303_FLOWCTRL_MASK, 0x40);
  else
   pl2303_update_reg(serial, 0, PL2303_FLOWCTRL_MASK, 0x60);
 } else if (pl2303_enable_xonxoff(tty, spriv->type)) {
  pl2303_update_reg(serial, 0, PL2303_FLOWCTRL_MASK, 0xc0);
 } else {
  pl2303_update_reg(serial, 0, PL2303_FLOWCTRL_MASK, 0);
 }

 kfree(buf);
}

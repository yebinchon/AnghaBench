
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_serial_port {TYPE_1__* serial; } ;
struct tty_struct {int termios; } ;
struct ktermios {int c_cflag; } ;
struct ch341_private {unsigned int baud_rate; int lcr; int mcr; int lock; } ;
struct TYPE_2__ {int dev; } ;


 int B0 ;
 int CBAUD ;
 int CH341_BIT_DTR ;
 int CH341_BIT_RTS ;
 int CH341_LCR_CS5 ;
 int CH341_LCR_CS6 ;
 int CH341_LCR_CS7 ;
 int CH341_LCR_CS8 ;
 int CH341_LCR_ENABLE_PAR ;
 int CH341_LCR_ENABLE_RX ;
 int CH341_LCR_ENABLE_TX ;
 int CH341_LCR_MARK_SPACE ;
 int CH341_LCR_PAR_EVEN ;
 int CH341_LCR_STOP_BITS_2 ;




 int C_BAUD (struct tty_struct*) ;
 scalar_t__ C_CMSPAR (struct tty_struct*) ;
 int C_CSIZE (struct tty_struct*) ;
 scalar_t__ C_CSTOPB (struct tty_struct*) ;
 scalar_t__ C_PARENB (struct tty_struct*) ;
 scalar_t__ C_PARODD (struct tty_struct*) ;
 int ch341_set_baudrate_lcr (int ,struct ch341_private*,int) ;
 int ch341_set_handshake (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int tty_get_baud_rate (struct tty_struct*) ;
 unsigned int tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_copy_hw (int *,struct ktermios*) ;
 int tty_termios_hw_change (int *,struct ktermios*) ;
 struct ch341_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void ch341_set_termios(struct tty_struct *tty,
  struct usb_serial_port *port, struct ktermios *old_termios)
{
 struct ch341_private *priv = usb_get_serial_port_data(port);
 unsigned baud_rate;
 unsigned long flags;
 u8 lcr;
 int r;


 if (old_termios && !tty_termios_hw_change(&tty->termios, old_termios))
  return;

 baud_rate = tty_get_baud_rate(tty);

 lcr = CH341_LCR_ENABLE_RX | CH341_LCR_ENABLE_TX;

 switch (C_CSIZE(tty)) {
 case 131:
  lcr |= CH341_LCR_CS5;
  break;
 case 130:
  lcr |= CH341_LCR_CS6;
  break;
 case 129:
  lcr |= CH341_LCR_CS7;
  break;
 case 128:
  lcr |= CH341_LCR_CS8;
  break;
 }

 if (C_PARENB(tty)) {
  lcr |= CH341_LCR_ENABLE_PAR;
  if (C_PARODD(tty) == 0)
   lcr |= CH341_LCR_PAR_EVEN;
  if (C_CMSPAR(tty))
   lcr |= CH341_LCR_MARK_SPACE;
 }

 if (C_CSTOPB(tty))
  lcr |= CH341_LCR_STOP_BITS_2;

 if (baud_rate) {
  priv->baud_rate = baud_rate;

  r = ch341_set_baudrate_lcr(port->serial->dev, priv, lcr);
  if (r < 0 && old_termios) {
   priv->baud_rate = tty_termios_baud_rate(old_termios);
   tty_termios_copy_hw(&tty->termios, old_termios);
  } else if (r == 0) {
   priv->lcr = lcr;
  }
 }

 spin_lock_irqsave(&priv->lock, flags);
 if (C_BAUD(tty) == B0)
  priv->mcr &= ~(CH341_BIT_DTR | CH341_BIT_RTS);
 else if (old_termios && (old_termios->c_cflag & CBAUD) == B0)
  priv->mcr |= (CH341_BIT_DTR | CH341_BIT_RTS);
 spin_unlock_irqrestore(&priv->lock, flags);

 ch341_set_handshake(port->serial->dev, priv->mcr);
}

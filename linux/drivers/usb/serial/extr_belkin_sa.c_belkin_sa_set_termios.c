
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct ktermios {unsigned int c_iflag; unsigned int c_cflag; } ;
struct tty_struct {struct ktermios termios; } ;
struct belkin_sa_private {unsigned long control_state; int bad_flow_control; int lock; } ;
typedef int speed_t ;
typedef int __u16 ;


 unsigned int B0 ;
 int BELKIN_SA_BAUD (int) ;
 int BELKIN_SA_DATA_BITS (int) ;
 int BELKIN_SA_FLOW_IRTS ;
 int BELKIN_SA_FLOW_IXON ;
 int BELKIN_SA_FLOW_NONE ;
 int BELKIN_SA_FLOW_OCTS ;
 int BELKIN_SA_FLOW_OXON ;
 int BELKIN_SA_PARITY_EVEN ;
 int BELKIN_SA_PARITY_NONE ;
 int BELKIN_SA_PARITY_ODD ;
 int BELKIN_SA_SET_BAUDRATE_REQUEST ;
 int BELKIN_SA_SET_DATA_BITS_REQUEST ;
 int BELKIN_SA_SET_DTR_REQUEST ;
 int BELKIN_SA_SET_FLOW_CTRL_REQUEST ;
 int BELKIN_SA_SET_PARITY_REQUEST ;
 int BELKIN_SA_SET_RTS_REQUEST ;
 int BELKIN_SA_SET_STOP_BITS_REQUEST ;
 int BELKIN_SA_STOP_BITS (int) ;
 scalar_t__ BSA_USB_CMD (int ,int) ;
 unsigned int CBAUD ;
 unsigned int CMSPAR ;
 unsigned int CRTSCTS ;




 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 unsigned int IXOFF ;
 unsigned int IXON ;
 unsigned int PARENB ;
 unsigned int PARODD ;
 unsigned long TIOCM_DTR ;
 unsigned long TIOCM_RTS ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_encode_baud_rate (struct tty_struct*,int,int) ;
 int tty_get_baud_rate (struct tty_struct*) ;
 struct belkin_sa_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void belkin_sa_set_termios(struct tty_struct *tty,
  struct usb_serial_port *port, struct ktermios *old_termios)
{
 struct usb_serial *serial = port->serial;
 struct belkin_sa_private *priv = usb_get_serial_port_data(port);
 unsigned int iflag;
 unsigned int cflag;
 unsigned int old_iflag = 0;
 unsigned int old_cflag = 0;
 __u16 urb_value = 0;
 unsigned long flags;
 unsigned long control_state;
 int bad_flow_control;
 speed_t baud;
 struct ktermios *termios = &tty->termios;

 iflag = termios->c_iflag;
 cflag = termios->c_cflag;

 termios->c_cflag &= ~CMSPAR;


 spin_lock_irqsave(&priv->lock, flags);
 control_state = priv->control_state;
 bad_flow_control = priv->bad_flow_control;
 spin_unlock_irqrestore(&priv->lock, flags);

 old_iflag = old_termios->c_iflag;
 old_cflag = old_termios->c_cflag;


 if ((cflag & CBAUD) != (old_cflag & CBAUD)) {

  if ((old_cflag & CBAUD) == B0) {
   control_state |= (TIOCM_DTR|TIOCM_RTS);
   if (BSA_USB_CMD(BELKIN_SA_SET_DTR_REQUEST, 1) < 0)
    dev_err(&port->dev, "Set DTR error\n");

   if (!(old_cflag & CRTSCTS))
    if (BSA_USB_CMD(BELKIN_SA_SET_RTS_REQUEST
        , 1) < 0)
     dev_err(&port->dev, "Set RTS error\n");
  }
 }

 baud = tty_get_baud_rate(tty);
 if (baud) {
  urb_value = BELKIN_SA_BAUD(baud);

  if (urb_value == 0)
   urb_value = 1;

  baud = BELKIN_SA_BAUD(urb_value);


  tty_encode_baud_rate(tty, baud, baud);
  if (BSA_USB_CMD(BELKIN_SA_SET_BAUDRATE_REQUEST, urb_value) < 0)
   dev_err(&port->dev, "Set baudrate error\n");
 } else {

  if (BSA_USB_CMD(BELKIN_SA_SET_FLOW_CTRL_REQUEST,
      BELKIN_SA_FLOW_NONE) < 0)
   dev_err(&port->dev, "Disable flowcontrol error\n");

  control_state &= ~(TIOCM_DTR | TIOCM_RTS);
  if (BSA_USB_CMD(BELKIN_SA_SET_DTR_REQUEST, 0) < 0)
   dev_err(&port->dev, "DTR LOW error\n");
  if (BSA_USB_CMD(BELKIN_SA_SET_RTS_REQUEST, 0) < 0)
   dev_err(&port->dev, "RTS LOW error\n");
 }


 if ((cflag ^ old_cflag) & (PARENB | PARODD)) {
  if (cflag & PARENB)
   urb_value = (cflag & PARODD) ? BELKIN_SA_PARITY_ODD
      : BELKIN_SA_PARITY_EVEN;
  else
   urb_value = BELKIN_SA_PARITY_NONE;
  if (BSA_USB_CMD(BELKIN_SA_SET_PARITY_REQUEST, urb_value) < 0)
   dev_err(&port->dev, "Set parity error\n");
 }


 if ((cflag & CSIZE) != (old_cflag & CSIZE)) {
  switch (cflag & CSIZE) {
  case 131:
   urb_value = BELKIN_SA_DATA_BITS(5);
   break;
  case 130:
   urb_value = BELKIN_SA_DATA_BITS(6);
   break;
  case 129:
   urb_value = BELKIN_SA_DATA_BITS(7);
   break;
  case 128:
   urb_value = BELKIN_SA_DATA_BITS(8);
   break;
  default:
   dev_dbg(&port->dev,
    "CSIZE was not CS5-CS8, using default of 8\n");
   urb_value = BELKIN_SA_DATA_BITS(8);
   break;
  }
  if (BSA_USB_CMD(BELKIN_SA_SET_DATA_BITS_REQUEST, urb_value) < 0)
   dev_err(&port->dev, "Set data bits error\n");
 }


 if ((cflag & CSTOPB) != (old_cflag & CSTOPB)) {
  urb_value = (cflag & CSTOPB) ? BELKIN_SA_STOP_BITS(2)
      : BELKIN_SA_STOP_BITS(1);
  if (BSA_USB_CMD(BELKIN_SA_SET_STOP_BITS_REQUEST,
       urb_value) < 0)
   dev_err(&port->dev, "Set stop bits error\n");
 }


 if (((iflag ^ old_iflag) & (IXOFF | IXON)) ||
  ((cflag ^ old_cflag) & CRTSCTS)) {
  urb_value = 0;
  if ((iflag & IXOFF) || (iflag & IXON))
   urb_value |= (BELKIN_SA_FLOW_OXON | BELKIN_SA_FLOW_IXON);
  else
   urb_value &= ~(BELKIN_SA_FLOW_OXON | BELKIN_SA_FLOW_IXON);

  if (cflag & CRTSCTS)
   urb_value |= (BELKIN_SA_FLOW_OCTS | BELKIN_SA_FLOW_IRTS);
  else
   urb_value &= ~(BELKIN_SA_FLOW_OCTS | BELKIN_SA_FLOW_IRTS);

  if (bad_flow_control)
   urb_value &= ~(BELKIN_SA_FLOW_IRTS);

  if (BSA_USB_CMD(BELKIN_SA_SET_FLOW_CTRL_REQUEST, urb_value) < 0)
   dev_err(&port->dev, "Set flow control error\n");
 }


 spin_lock_irqsave(&priv->lock, flags);
 priv->control_state = control_state;
 spin_unlock_irqrestore(&priv->lock, flags);
}

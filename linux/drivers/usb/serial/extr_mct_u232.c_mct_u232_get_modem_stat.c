
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dev; TYPE_1__* serial; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MCT_U232_GET_MODEM_STAT_REQUEST ;
 int MCT_U232_GET_MODEM_STAT_SIZE ;
 int MCT_U232_GET_REQUEST_TYPE ;
 int MCT_U232_MAX_SIZE ;
 int WDR_TIMEOUT ;
 int dev_dbg (int *,char*,unsigned char) ;
 int dev_err (int *,char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int ,int ) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,unsigned char*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int mct_u232_get_modem_stat(struct usb_serial_port *port,
       unsigned char *msr)
{
 int rc;
 unsigned char *buf;

 buf = kmalloc(MCT_U232_MAX_SIZE, GFP_KERNEL);
 if (buf == ((void*)0)) {
  *msr = 0;
  return -ENOMEM;
 }
 rc = usb_control_msg(port->serial->dev, usb_rcvctrlpipe(port->serial->dev, 0),
   MCT_U232_GET_MODEM_STAT_REQUEST,
   MCT_U232_GET_REQUEST_TYPE,
   0, 0, buf, MCT_U232_GET_MODEM_STAT_SIZE,
   WDR_TIMEOUT);
 if (rc < MCT_U232_GET_MODEM_STAT_SIZE) {
  dev_err(&port->dev, "Get MODEM STATus failed (error = %d)\n", rc);

  if (rc >= 0)
   rc = -EIO;

  *msr = 0;
 } else {
  *msr = buf[0];
 }
 dev_dbg(&port->dev, "get_modem_stat: 0x%x\n", *msr);
 kfree(buf);
 return rc;
}

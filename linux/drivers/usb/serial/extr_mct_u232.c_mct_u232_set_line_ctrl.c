
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dev; TYPE_1__* serial; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MCT_U232_MAX_SIZE ;
 int MCT_U232_SET_LINE_CTRL_REQUEST ;
 int MCT_U232_SET_LINE_CTRL_SIZE ;
 int MCT_U232_SET_REQUEST_TYPE ;
 int WDR_TIMEOUT ;
 int dev_dbg (int *,char*,unsigned char) ;
 int dev_err (int *,char*,unsigned char,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int ,int ) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,unsigned char*,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int mct_u232_set_line_ctrl(struct usb_serial_port *port,
      unsigned char lcr)
{
 int rc;
 unsigned char *buf;

 buf = kmalloc(MCT_U232_MAX_SIZE, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 buf[0] = lcr;
 rc = usb_control_msg(port->serial->dev, usb_sndctrlpipe(port->serial->dev, 0),
   MCT_U232_SET_LINE_CTRL_REQUEST,
   MCT_U232_SET_REQUEST_TYPE,
   0, 0, buf, MCT_U232_SET_LINE_CTRL_SIZE,
   WDR_TIMEOUT);
 if (rc < 0)
  dev_err(&port->dev, "Set LINE CTRL 0x%x failed (error = %d)\n", lcr, rc);
 dev_dbg(&port->dev, "set_line_ctrl: 0x%x\n", lcr);
 kfree(buf);
 return rc;
}

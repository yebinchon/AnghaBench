
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial {int dev; } ;
typedef int __u16 ;


 int GFP_KERNEL ;
 int GPIO_REGISTER ;
 int MCS_RDREQ ;
 int MCS_RD_RTYPE ;
 int MCS_WRREQ ;
 int MCS_WR_RTYPE ;
 int MODEM_CONTROL_REGISTER ;
 int MOS_WDR_TIMEOUT ;
 int VENDOR_READ_LENGTH ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int usb_control_msg (int ,int ,int ,int ,int,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int mos7810_check(struct usb_serial *serial)
{
 int i, pass_count = 0;
 u8 *buf;
 __u16 data = 0, mcr_data = 0;
 __u16 test_pattern = 0x55AA;
 int res;

 buf = kmalloc(VENDOR_READ_LENGTH, GFP_KERNEL);
 if (!buf)
  return 0;


 res = usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
  MCS_RDREQ, MCS_RD_RTYPE, 0x0300, MODEM_CONTROL_REGISTER,
  buf, VENDOR_READ_LENGTH, MOS_WDR_TIMEOUT);
 if (res == VENDOR_READ_LENGTH)
  mcr_data = *buf;

 for (i = 0; i < 16; i++) {

  usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
   MCS_WRREQ, MCS_WR_RTYPE,
   (0x0300 | (((test_pattern >> i) & 0x0001) << 1)),
   MODEM_CONTROL_REGISTER, ((void*)0), 0, MOS_WDR_TIMEOUT);


  res = usb_control_msg(serial->dev,
    usb_rcvctrlpipe(serial->dev, 0), MCS_RDREQ,
    MCS_RD_RTYPE, 0, GPIO_REGISTER, buf,
    VENDOR_READ_LENGTH, MOS_WDR_TIMEOUT);
  if (res == VENDOR_READ_LENGTH)
   data = *buf;


  if (((test_pattern >> i) ^ (~data >> 1)) & 0x0001)
   break;

  pass_count++;
 }


 usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0), MCS_WRREQ,
  MCS_WR_RTYPE, 0x0300 | mcr_data, MODEM_CONTROL_REGISTER, ((void*)0),
  0, MOS_WDR_TIMEOUT);

 kfree(buf);

 if (pass_count == 16)
  return 1;

 return 0;
}

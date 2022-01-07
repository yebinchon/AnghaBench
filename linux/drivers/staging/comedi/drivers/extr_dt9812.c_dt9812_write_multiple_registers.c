
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u8 ;
struct usb_device {int dummy; } ;
struct TYPE_8__ {TYPE_2__* write; } ;
struct TYPE_6__ {int count; } ;
struct TYPE_9__ {TYPE_3__ write_multi_info; TYPE_1__ read_multi_info; } ;
struct dt9812_usb_cmd {TYPE_4__ u; int cmd; } ;
struct TYPE_10__ {int addr; } ;
struct dt9812_private {TYPE_5__ cmd_wr; } ;
struct comedi_device {struct dt9812_private* private; } ;
struct TYPE_7__ {void* value; void* address; } ;


 int DT9812_USB_TIMEOUT ;
 int DT9812_W_MULTI_BYTE_REG ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int cpu_to_le32 (int ) ;
 int usb_bulk_msg (struct usb_device*,int ,struct dt9812_usb_cmd*,int,int*,int ) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static int dt9812_write_multiple_registers(struct comedi_device *dev,
        int reg_count, u8 *address,
        u8 *value)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 struct dt9812_private *devpriv = dev->private;
 struct dt9812_usb_cmd cmd;
 int i, count;

 cmd.cmd = cpu_to_le32(DT9812_W_MULTI_BYTE_REG);
 cmd.u.read_multi_info.count = reg_count;
 for (i = 0; i < reg_count; i++) {
  cmd.u.write_multi_info.write[i].address = address[i];
  cmd.u.write_multi_info.write[i].value = value[i];
 }


 return usb_bulk_msg(usb, usb_sndbulkpipe(usb, devpriv->cmd_wr.addr),
       &cmd, 32, &count, DT9812_USB_TIMEOUT);
}

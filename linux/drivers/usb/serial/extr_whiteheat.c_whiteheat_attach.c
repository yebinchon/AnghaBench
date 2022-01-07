
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct whiteheat_hw_info {int sw_minor_rev; int sw_major_rev; } ;
struct whiteheat_command_private {int wait_command; scalar_t__ port_running; int mutex; } ;
struct usb_serial_port {TYPE_2__* read_urb; TYPE_1__* write_urb; int bulk_in_endpointAddress; int bulk_out_endpointAddress; } ;
struct usb_serial {TYPE_3__* type; TYPE_4__* dev; struct usb_serial_port** port; } ;
typedef scalar_t__ __u8 ;
struct TYPE_11__ {int dev; } ;
struct TYPE_10__ {int description; } ;
struct TYPE_9__ {int complete; } ;
struct TYPE_8__ {int complete; } ;


 size_t COMMAND_PORT ;
 int COMMAND_TIMEOUT_MS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WHITEHEAT_GET_HW_INFO ;
 int command_port_read_callback ;
 int command_port_write_callback ;
 int dev_err (int *,char*,int ,...) ;
 int dev_info (int *,char*,int ,int ,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (scalar_t__*) ;
 void* kmalloc (int,int ) ;
 int mutex_init (int *) ;
 int usb_bulk_msg (TYPE_4__*,int,scalar_t__*,int,int*,int ) ;
 int usb_clear_halt (TYPE_4__*,int) ;
 int usb_rcvbulkpipe (TYPE_4__*,int ) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct whiteheat_command_private*) ;
 int usb_sndbulkpipe (TYPE_4__*,int ) ;

__attribute__((used)) static int whiteheat_attach(struct usb_serial *serial)
{
 struct usb_serial_port *command_port;
 struct whiteheat_command_private *command_info;
 struct whiteheat_hw_info *hw_info;
 int pipe;
 int ret;
 int alen;
 __u8 *command;
 __u8 *result;

 command_port = serial->port[COMMAND_PORT];

 pipe = usb_sndbulkpipe(serial->dev,
   command_port->bulk_out_endpointAddress);
 command = kmalloc(2, GFP_KERNEL);
 if (!command)
  goto no_command_buffer;
 command[0] = WHITEHEAT_GET_HW_INFO;
 command[1] = 0;

 result = kmalloc(sizeof(*hw_info) + 1, GFP_KERNEL);
 if (!result)
  goto no_result_buffer;





 usb_clear_halt(serial->dev, pipe);
 ret = usb_bulk_msg(serial->dev, pipe, command, 2,
      &alen, COMMAND_TIMEOUT_MS);
 if (ret) {
  dev_err(&serial->dev->dev, "%s: Couldn't send command [%d]\n",
   serial->type->description, ret);
  goto no_firmware;
 } else if (alen != 2) {
  dev_err(&serial->dev->dev, "%s: Send command incomplete [%d]\n",
   serial->type->description, alen);
  goto no_firmware;
 }

 pipe = usb_rcvbulkpipe(serial->dev,
    command_port->bulk_in_endpointAddress);

 usb_clear_halt(serial->dev, pipe);
 ret = usb_bulk_msg(serial->dev, pipe, result,
   sizeof(*hw_info) + 1, &alen, COMMAND_TIMEOUT_MS);
 if (ret) {
  dev_err(&serial->dev->dev, "%s: Couldn't get results [%d]\n",
   serial->type->description, ret);
  goto no_firmware;
 } else if (alen != sizeof(*hw_info) + 1) {
  dev_err(&serial->dev->dev, "%s: Get results incomplete [%d]\n",
   serial->type->description, alen);
  goto no_firmware;
 } else if (result[0] != command[0]) {
  dev_err(&serial->dev->dev, "%s: Command failed [%d]\n",
   serial->type->description, result[0]);
  goto no_firmware;
 }

 hw_info = (struct whiteheat_hw_info *)&result[1];

 dev_info(&serial->dev->dev, "%s: Firmware v%d.%02d\n",
   serial->type->description,
   hw_info->sw_major_rev, hw_info->sw_minor_rev);

 command_info = kmalloc(sizeof(struct whiteheat_command_private),
        GFP_KERNEL);
 if (!command_info)
  goto no_command_private;

 mutex_init(&command_info->mutex);
 command_info->port_running = 0;
 init_waitqueue_head(&command_info->wait_command);
 usb_set_serial_port_data(command_port, command_info);
 command_port->write_urb->complete = command_port_write_callback;
 command_port->read_urb->complete = command_port_read_callback;
 kfree(result);
 kfree(command);

 return 0;

no_firmware:

 dev_err(&serial->dev->dev,
  "%s: Unable to retrieve firmware version, try replugging\n",
  serial->type->description);
 dev_err(&serial->dev->dev,
  "%s: If the firmware is not running (status led not blinking)\n",
  serial->type->description);
 dev_err(&serial->dev->dev,
  "%s: please contact support@connecttech.com\n",
  serial->type->description);
 kfree(result);
 kfree(command);
 return -ENODEV;

no_command_private:
 kfree(result);
no_result_buffer:
 kfree(command);
no_command_buffer:
 return -ENOMEM;
}

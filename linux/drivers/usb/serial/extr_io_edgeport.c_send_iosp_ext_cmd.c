
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edgeport_port {TYPE_1__* port; } ;
typedef int __u8 ;
struct TYPE_2__ {int port_number; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int MAKE_CMD_EXT_CMD (unsigned char**,int*,int ,int ,int ) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int write_cmd_usb (struct edgeport_port*,unsigned char*,int) ;

__attribute__((used)) static int send_iosp_ext_cmd(struct edgeport_port *edge_port,
      __u8 command, __u8 param)
{
 unsigned char *buffer;
 unsigned char *currentCommand;
 int length = 0;
 int status = 0;

 buffer = kmalloc(10, GFP_ATOMIC);
 if (!buffer)
  return -ENOMEM;

 currentCommand = buffer;

 MAKE_CMD_EXT_CMD(&currentCommand, &length, edge_port->port->port_number,
    command, param);

 status = write_cmd_usb(edge_port, buffer, length);
 if (status) {

  kfree(buffer);
 }

 return status;
}

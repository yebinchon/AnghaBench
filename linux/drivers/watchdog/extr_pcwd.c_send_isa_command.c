
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ io_addr; } ;


 scalar_t__ DEBUG ;
 int ISA_COMMAND_TIMEOUT ;
 int WD_WCMD ;
 scalar_t__ debug ;
 int inb_p (scalar_t__) ;
 int outb_p (int,scalar_t__) ;
 TYPE_1__ pcwd_private ;
 int pr_debug (char*,int,...) ;
 int udelay (int) ;

__attribute__((used)) static int send_isa_command(int cmd)
{
 int i;
 int control_status;
 int port0, last_port0;

 if (debug >= DEBUG)
  pr_debug("sending following data cmd=0x%02x\n", cmd);


 control_status = (cmd & 0x0F) | WD_WCMD;
 outb_p(control_status, pcwd_private.io_addr + 2);
 udelay(ISA_COMMAND_TIMEOUT);

 port0 = inb_p(pcwd_private.io_addr);
 for (i = 0; i < 25; ++i) {
  last_port0 = port0;
  port0 = inb_p(pcwd_private.io_addr);

  if (port0 == last_port0)
   break;

  udelay(250);
 }

 if (debug >= DEBUG)
  pr_debug("received following data for cmd=0x%02x: port0=0x%02x last_port0=0x%02x\n",
    cmd, port0, last_port0);

 return port0;
}

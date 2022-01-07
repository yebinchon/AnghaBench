
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int command_mode; int io_lock; scalar_t__ io_addr; } ;


 int CMD_ISA_IDLE ;
 scalar_t__ DEBUG ;
 int ISA_COMMAND_TIMEOUT ;
 scalar_t__ debug ;
 int outb_p (int,scalar_t__) ;
 TYPE_1__ pcwd_private ;
 int pr_debug (char*,int) ;
 int send_isa_command (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static int set_command_mode(void)
{
 int i, found = 0, count = 0;


 spin_lock(&pcwd_private.io_lock);
 while ((!found) && (count < 3)) {
  i = send_isa_command(CMD_ISA_IDLE);

  if (i == 0x00)
   found = 1;
  else if (i == 0xF3) {

   outb_p(0x00, pcwd_private.io_addr + 2);
   udelay(1200);
   outb_p(0x00, pcwd_private.io_addr + 2);
   udelay(ISA_COMMAND_TIMEOUT);
  }
  count++;
 }
 spin_unlock(&pcwd_private.io_lock);
 pcwd_private.command_mode = found;

 if (debug >= DEBUG)
  pr_debug("command_mode=%d\n", pcwd_private.command_mode);

 return found;
}

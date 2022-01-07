
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_lock; scalar_t__ io_addr; } ;


 scalar_t__ DEBUG ;
 int PCI_COMMAND_TIMEOUT ;
 int WD_PCI_WRSP ;
 scalar_t__ debug ;
 int inb_p (scalar_t__) ;
 int mdelay (int) ;
 int outb_p (int,scalar_t__) ;
 TYPE_1__ pcipcwd_private ;
 int pr_debug (char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int send_command(int cmd, int *msb, int *lsb)
{
 int got_response, count;

 if (debug >= DEBUG)
  pr_debug("sending following data cmd=0x%02x msb=0x%02x lsb=0x%02x\n",
    cmd, *msb, *lsb);

 spin_lock(&pcipcwd_private.io_lock);






 outb_p(*lsb, pcipcwd_private.io_addr + 4);
 outb_p(*msb, pcipcwd_private.io_addr + 5);
 outb_p(cmd, pcipcwd_private.io_addr + 6);




 got_response = inb_p(pcipcwd_private.io_addr + 2) & WD_PCI_WRSP;
 for (count = 0; (count < PCI_COMMAND_TIMEOUT) && (!got_response);
        count++) {
  mdelay(1);
  got_response = inb_p(pcipcwd_private.io_addr + 2) & WD_PCI_WRSP;
 }

 if (debug >= DEBUG) {
  if (got_response) {
   pr_debug("time to process command was: %d ms\n",
     count);
  } else {
   pr_debug("card did not respond on command!\n");
  }
 }

 if (got_response) {

  *lsb = inb_p(pcipcwd_private.io_addr + 4);
  *msb = inb_p(pcipcwd_private.io_addr + 5);


  inb_p(pcipcwd_private.io_addr + 6);

  if (debug >= DEBUG)
   pr_debug("received following data for cmd=0x%02x: msb=0x%02x lsb=0x%02x\n",
     cmd, *msb, *lsb);
 }

 spin_unlock(&pcipcwd_private.io_lock);

 return got_response;
}

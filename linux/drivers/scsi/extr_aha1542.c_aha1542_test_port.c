
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct Scsi_Host {int io_port; } ;


 int CDF ;
 int CMD_INQUIRY ;
 int CONTROL (int ) ;
 int DATA (int ) ;
 int DF ;
 int DIAGF ;
 int HACC ;
 int IDLE ;
 int INIT ;
 int INTRFLAGS (int ) ;
 int INTRMASK ;
 int INVDCMD ;
 int IRST ;
 int SRST ;
 int STATMASK ;
 int STATUS (int ) ;
 int STST ;
 int aha1542_intr_reset (int ) ;
 int aha1542_outb (int ,int ) ;
 int inb (int ) ;
 int mdelay (int) ;
 int outb (int,int ) ;
 int wait_mask (int ,int,int,int,int ) ;

__attribute__((used)) static int aha1542_test_port(struct Scsi_Host *sh)
{
 u8 inquiry_result[4];
 int i;


 if (inb(STATUS(sh->io_port)) == 0xff)
  return 0;




 aha1542_intr_reset(sh->io_port);

 outb(SRST | IRST , CONTROL(sh->io_port));

 mdelay(20);


 if (!wait_mask(STATUS(sh->io_port), STATMASK, INIT | IDLE, STST | DIAGF | INVDCMD | DF | CDF, 0))
  return 0;


 if (inb(INTRFLAGS(sh->io_port)) & INTRMASK)
  return 0;




 aha1542_outb(sh->io_port, CMD_INQUIRY);

 for (i = 0; i < 4; i++) {
  if (!wait_mask(STATUS(sh->io_port), DF, DF, 0, 0))
   return 0;
  inquiry_result[i] = inb(DATA(sh->io_port));
 }


 if (inb(STATUS(sh->io_port)) & DF)
  return 0;


 if (!wait_mask(INTRFLAGS(sh->io_port), HACC, HACC, 0, 0))
  return 0;


 outb(IRST, CONTROL(sh->io_port));

 return 1;
}

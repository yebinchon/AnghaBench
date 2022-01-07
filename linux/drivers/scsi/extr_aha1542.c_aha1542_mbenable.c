
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct Scsi_Host {int io_port; } ;


 int BIOS_TRANSLATION_25563 ;
 int BIOS_TRANSLATION_6432 ;
 int CMD_EXTBIOS ;
 int CMD_MBENABLE ;
 int HACC ;
 int INTRFLAGS (int ) ;
 int INTRMASK ;
 int KERN_ERR ;
 scalar_t__ aha1542_in (int ,int*,int,int) ;
 int aha1542_intr_reset (int ) ;
 scalar_t__ aha1542_out (int ,int*,int) ;
 int aha1542_outb (int ,int ) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 int wait_mask (int ,int ,int ,int ,int) ;

__attribute__((used)) static int aha1542_mbenable(struct Scsi_Host *sh)
{
 static u8 mbenable_cmd[3];
 static u8 mbenable_result[2];
 int retval;

 retval = BIOS_TRANSLATION_6432;

 aha1542_outb(sh->io_port, CMD_EXTBIOS);
 if (aha1542_in(sh->io_port, mbenable_result, 2, 100))
  return retval;
 if (!wait_mask(INTRFLAGS(sh->io_port), INTRMASK, HACC, 0, 100))
  goto fail;
 aha1542_intr_reset(sh->io_port);

 if ((mbenable_result[0] & 0x08) || mbenable_result[1]) {
  mbenable_cmd[0] = CMD_MBENABLE;
  mbenable_cmd[1] = 0;
  mbenable_cmd[2] = mbenable_result[1];

  if ((mbenable_result[0] & 0x08) && (mbenable_result[1] & 0x03))
   retval = BIOS_TRANSLATION_25563;

  if (aha1542_out(sh->io_port, mbenable_cmd, 3))
   goto fail;
 };
 while (0) {
fail:
  shost_printk(KERN_ERR, sh, "Mailbox init failed\n");
 }
 aha1542_intr_reset(sh->io_port);
 return retval;
}

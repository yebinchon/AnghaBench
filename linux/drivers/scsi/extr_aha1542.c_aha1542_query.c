
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aha1542_hostdata {int bios_translation; } ;
struct Scsi_Host {int io_port; } ;


 int BIOS_TRANSLATION_6432 ;
 int CMD_INQUIRY ;
 int DATA (int ) ;
 int DF ;
 int HACC ;
 int INTRFLAGS (int ) ;
 int INTRMASK ;
 int KERN_ERR ;
 int KERN_INFO ;
 int STATUS (int ) ;
 int aha1542_in (int ,int*,int,int ) ;
 int aha1542_intr_reset (int ) ;
 int aha1542_mbenable (struct Scsi_Host*) ;
 int aha1542_outb (int ,int ) ;
 int inb (int ) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 struct aha1542_hostdata* shost_priv (struct Scsi_Host*) ;
 int wait_mask (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int aha1542_query(struct Scsi_Host *sh)
{
 struct aha1542_hostdata *aha1542 = shost_priv(sh);
 u8 inquiry_result[4];
 int i;
 i = inb(STATUS(sh->io_port));
 if (i & DF) {
  i = inb(DATA(sh->io_port));
 };
 aha1542_outb(sh->io_port, CMD_INQUIRY);
 aha1542_in(sh->io_port, inquiry_result, 4, 0);
 if (!wait_mask(INTRFLAGS(sh->io_port), INTRMASK, HACC, 0, 0))
  shost_printk(KERN_ERR, sh, "error querying card type\n");
 aha1542_intr_reset(sh->io_port);

 aha1542->bios_translation = BIOS_TRANSLATION_6432;







 if (inquiry_result[0] == 0x43) {
  shost_printk(KERN_INFO, sh, "Emulation mode not supported for AHA-1740 hardware, use aha1740 driver instead.\n");
  return 1;
 };




 aha1542->bios_translation = aha1542_mbenable(sh);

 return 0;
}

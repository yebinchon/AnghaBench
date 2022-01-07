
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef char* uint16_t ;
typedef int u_int ;
struct ahd_softc {int dev_softc; } ;
typedef int ahd_mode_state ;


 int CLRINT ;
 int CLRSPLTINT ;
 int DCHSPLTSTAT0 ;
 int DCHSPLTSTAT1 ;
 int PCIXR_STATUS ;
 int SGSPLTSTAT0 ;
 int SGSPLTSTAT1 ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 char* ahd_pci_read_config (int ,int ,int) ;
 int ahd_pci_write_config (int ,int ,char*,int) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int,int) ;
 int printk (char*,int ,char*) ;
 char** split_status_source ;
 char** split_status_strings ;

__attribute__((used)) static void
ahd_pci_split_intr(struct ahd_softc *ahd, u_int intstat)
{
 uint8_t split_status[4];
 uint8_t split_status1[4];
 uint8_t sg_split_status[2];
 uint8_t sg_split_status1[2];
 ahd_mode_state saved_modes;
 u_int i;
 uint16_t pcix_status;





 pcix_status = ahd_pci_read_config(ahd->dev_softc, PCIXR_STATUS,
                2);
 printk("%s: PCI Split Interrupt - PCI-X status = 0x%x\n",
        ahd_name(ahd), pcix_status);
 saved_modes = ahd_save_modes(ahd);
 for (i = 0; i < 4; i++) {
  ahd_set_modes(ahd, i, i);

  split_status[i] = ahd_inb(ahd, DCHSPLTSTAT0);
  split_status1[i] = ahd_inb(ahd, DCHSPLTSTAT1);

  ahd_outb(ahd, DCHSPLTSTAT0, split_status[i]);
  ahd_outb(ahd, DCHSPLTSTAT1, split_status1[i]);
  if (i > 1)
   continue;
  sg_split_status[i] = ahd_inb(ahd, SGSPLTSTAT0);
  sg_split_status1[i] = ahd_inb(ahd, SGSPLTSTAT1);

  ahd_outb(ahd, SGSPLTSTAT0, sg_split_status[i]);
  ahd_outb(ahd, SGSPLTSTAT1, sg_split_status1[i]);
 }

 for (i = 0; i < 4; i++) {
  u_int bit;

  for (bit = 0; bit < 8; bit++) {

   if ((split_status[i] & (0x1 << bit)) != 0)
    printk(split_status_strings[bit], ahd_name(ahd),
           split_status_source[i]);

   if (i > 1)
    continue;

   if ((sg_split_status[i] & (0x1 << bit)) != 0)
    printk(split_status_strings[bit], ahd_name(ahd), "SG");
  }
 }



 ahd_pci_write_config(ahd->dev_softc, PCIXR_STATUS,
        pcix_status, 2);
 ahd_outb(ahd, CLRINT, CLRSPLTINT);
 ahd_restore_modes(ahd, saved_modes);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u32 ;
struct sym_tcb {int usrflags; int usr_width; int usr_period; int usrtags; } ;
struct sym_nvram {scalar_t__ type; } ;
struct sym_hcb {int maxwide; int features; int clock_khz; int multiplier; int clock_divn; int rv_scntl3; int minsync; int maxsync; int minsync_dt; int maxsync_dt; int maxoffs_dt; int rv_ccntl1; int sv_dmode; int sv_ctest4; int sv_ctest5; int maxburst; int rv_dmode; int rv_dcntl; int rv_ctest3; int rv_ctest5; int rv_ctest4; int rv_scntl0; int myaddr; int sv_gpcntl; int sv_dcntl; char* fw_name; int sv_scntl3; int sv_ctest3; scalar_t__ ram_ba; scalar_t__ scsi_mode; struct sym_tcb* target; int rv_ccntl0; } ;
struct sym_data {struct pci_dev* pdev; } ;
struct pci_dev {scalar_t__ device; int revision; } ;
struct Scsi_Host {int dummy; } ;


 int BOF ;
 int CLSE ;
 int DDAC ;
 int DFS ;
 int DILS ;
 int ENPMJ ;
 int ERL ;
 int ERMP ;
 int EXTIBMV ;
 int FE_BOF ;
 int FE_C10 ;
 int FE_CLSE ;
 int FE_DAC ;
 int FE_DBLR ;
 int FE_DFS ;
 int FE_ERL ;
 int FE_ERMP ;
 int FE_LED0 ;
 int FE_LEDC ;
 int FE_NOPM ;
 int FE_PFEN ;
 int FE_QUAD ;
 int FE_ULTRA ;
 int FE_ULTRA2 ;
 int FE_ULTRA3 ;
 int FE_VARCLK ;
 int FE_WIDE ;
 int FE_WRIE ;
 int INB (struct sym_hcb*,int ) ;
 int IRQM ;
 int MPEE ;
 scalar_t__ PCI_DEVICE_ID_LSI_53C1010_33 ;
 scalar_t__ PCI_DEVICE_ID_NCR_53C810 ;
 scalar_t__ PCI_DEVICE_ID_NCR_53C860 ;
 scalar_t__ PCI_DEVICE_ID_NCR_53C895 ;
 int PFEN ;
 int SYM_CONF_DMA_ADDRESSING_MODE ;
 int SYM_CONF_MAX_TARGET ;
 unsigned long SYM_CONF_MIN_ASYNC ;
 int SYM_DISC_ENABLED ;
 int SYM_SETUP_BURST_ORDER ;
 int SYM_SETUP_HOST_ID ;
 int SYM_SETUP_IRQ_MODE ;
 int SYM_SETUP_MAX_TAG ;
 scalar_t__ SYM_SETUP_SCSI_LED ;
 scalar_t__ SYM_SYMBIOS_NVRAM ;
 int SYM_TAGS_ENABLED ;
 scalar_t__ SYM_TEKRAM_NVRAM ;
 int WRIE ;
 int XTIMOD ;
 int burst_code (int,int,int) ;
 int div64_ul (int,int) ;
 unsigned long* div_10M ;
 int nc_scid ;
 int printf (char*,char*,...) ;
 struct sym_data* shost_priv (struct Scsi_Host*) ;
 int sym_getclock (struct sym_hcb*,int) ;
 int sym_init_burst (struct sym_hcb*,int) ;
 char* sym_name (struct sym_hcb*) ;
 int sym_nvram_setup_host (struct Scsi_Host*,struct sym_hcb*,struct sym_nvram*) ;
 int sym_nvram_setup_target (struct sym_tcb*,int,struct sym_nvram*) ;
 char* sym_nvram_type (struct sym_nvram*) ;
 char* sym_scsi_bus_mode (scalar_t__) ;
 int sym_set_bus_mode (struct sym_hcb*,struct sym_nvram*) ;
 int sym_verbose ;
 int use_dac (struct sym_hcb*) ;

__attribute__((used)) static int sym_prepare_setting(struct Scsi_Host *shost, struct sym_hcb *np, struct sym_nvram *nvram)
{
 struct sym_data *sym_data = shost_priv(shost);
 struct pci_dev *pdev = sym_data->pdev;
 u_char burst_max;
 u32 period;
 int i;

 np->maxwide = (np->features & FE_WIDE) ? 1 : 0;




 if (np->features & (FE_ULTRA3 | FE_ULTRA2))
  np->clock_khz = 160000;
 else if (np->features & FE_ULTRA)
  np->clock_khz = 80000;
 else
  np->clock_khz = 40000;




 if (np->features & FE_QUAD)
  np->multiplier = 4;
 else if (np->features & FE_DBLR)
  np->multiplier = 2;
 else
  np->multiplier = 1;





 if (np->features & FE_VARCLK)
  sym_getclock(np, np->multiplier);




 i = np->clock_divn - 1;
 while (--i >= 0) {
  if (10ul * SYM_CONF_MIN_ASYNC * np->clock_khz > div_10M[i]) {
   ++i;
   break;
  }
 }
 np->rv_scntl3 = i+1;





 if (np->features & FE_C10)
  np->rv_scntl3 = 0;





 period = (4 * div_10M[0] + np->clock_khz - 1) / np->clock_khz;

 if (period <= 250) np->minsync = 10;
 else if (period <= 303) np->minsync = 11;
 else if (period <= 500) np->minsync = 12;
 else np->minsync = (period + 40 - 1) / 40;




 if (np->minsync < 25 &&
   !(np->features & (FE_ULTRA|FE_ULTRA2|FE_ULTRA3)))
  np->minsync = 25;
 else if (np->minsync < 12 &&
   !(np->features & (FE_ULTRA2|FE_ULTRA3)))
  np->minsync = 12;




 period = div64_ul(11 * div_10M[np->clock_divn - 1], 4 * np->clock_khz);
 np->maxsync = period > 2540 ? 254 : period / 10;




 if ((np->features & (FE_C10|FE_ULTRA3)) == (FE_C10|FE_ULTRA3)) {
  if (np->clock_khz == 160000) {
   np->minsync_dt = 9;
   np->maxsync_dt = 50;
   np->maxoffs_dt = nvram->type ? 62 : 31;
  }
 }




 if (np->features & FE_DAC) {
  if (!use_dac(np))
   np->rv_ccntl1 |= (DDAC);
  else if (SYM_CONF_DMA_ADDRESSING_MODE == 1)
   np->rv_ccntl1 |= (XTIMOD | EXTIBMV);
  else if (SYM_CONF_DMA_ADDRESSING_MODE == 2)
   np->rv_ccntl1 |= (0 | EXTIBMV);
 }




 if (np->features & FE_NOPM)
  np->rv_ccntl0 |= (ENPMJ);






 if (pdev->device == PCI_DEVICE_ID_LSI_53C1010_33 &&
     pdev->revision < 0x1)
  np->rv_ccntl0 |= DILS;




 burst_max = SYM_SETUP_BURST_ORDER;
 if (burst_max == 255)
  burst_max = burst_code(np->sv_dmode, np->sv_ctest4,
           np->sv_ctest5);
 if (burst_max > 7)
  burst_max = 7;
 if (burst_max > np->maxburst)
  burst_max = np->maxburst;
 if ((pdev->device == PCI_DEVICE_ID_NCR_53C810 &&
      pdev->revision >= 0x10 && pdev->revision <= 0x11) ||
     (pdev->device == PCI_DEVICE_ID_NCR_53C860 &&
      pdev->revision <= 0x1))
  np->features &= ~(FE_WRIE|FE_ERL|FE_ERMP);







 if (np->features & FE_ERL)
  np->rv_dmode |= ERL;
 if (np->features & FE_BOF)
  np->rv_dmode |= BOF;
 if (np->features & FE_ERMP)
  np->rv_dmode |= ERMP;

 if ((np->features & FE_PFEN) && !np->ram_ba)



  np->rv_dcntl |= PFEN;
 if (np->features & FE_CLSE)
  np->rv_dcntl |= CLSE;
 if (np->features & FE_WRIE)
  np->rv_ctest3 |= WRIE;
 if (np->features & FE_DFS)
  np->rv_ctest5 |= DFS;




 np->rv_ctest4 |= MPEE;
 np->rv_scntl0 |= 0x0a;




 np->myaddr = 255;
 np->scsi_mode = 0;
 sym_nvram_setup_host(shost, np, nvram);




 if (np->myaddr == 255) {
  np->myaddr = INB(np, nc_scid) & 0x07;
  if (!np->myaddr)
   np->myaddr = SYM_SETUP_HOST_ID;
 }




 sym_init_burst(np, burst_max);

 sym_set_bus_mode(np, nvram);







 if ((SYM_SETUP_SCSI_LED ||
      (nvram->type == SYM_SYMBIOS_NVRAM ||
       (nvram->type == SYM_TEKRAM_NVRAM &&
        pdev->device == PCI_DEVICE_ID_NCR_53C895))) &&
     !(np->features & FE_LEDC) && !(np->sv_gpcntl & 0x01))
  np->features |= FE_LED0;




 switch(SYM_SETUP_IRQ_MODE & 3) {
 case 2:
  np->rv_dcntl |= IRQM;
  break;
 case 1:
  np->rv_dcntl |= (np->sv_dcntl & IRQM);
  break;
 default:
  break;
 }





 for (i = 0 ; i < SYM_CONF_MAX_TARGET ; i++) {
  struct sym_tcb *tp = &np->target[i];

  tp->usrflags |= (SYM_DISC_ENABLED | SYM_TAGS_ENABLED);
  tp->usrtags = SYM_SETUP_MAX_TAG;
  tp->usr_width = np->maxwide;
  tp->usr_period = 9;

  sym_nvram_setup_target(tp, i, nvram);

  if (!tp->usrtags)
   tp->usrflags &= ~SYM_TAGS_ENABLED;
 }




 printf("%s: %s, ID %d, Fast-%d, %s, %s\n", sym_name(np),
  sym_nvram_type(nvram), np->myaddr,
  (np->features & FE_ULTRA3) ? 80 :
  (np->features & FE_ULTRA2) ? 40 :
  (np->features & FE_ULTRA) ? 20 : 10,
  sym_scsi_bus_mode(np->scsi_mode),
  (np->rv_scntl0 & 0xa) ? "parity checking" : "NO parity");



 if (sym_verbose) {
  printf("%s: %s IRQ line driver%s\n",
   sym_name(np),
   np->rv_dcntl & IRQM ? "totem pole" : "open drain",
   np->ram_ba ? ", using on-chip SRAM" : "");
  printf("%s: using %s firmware.\n", sym_name(np), np->fw_name);
  if (np->features & FE_NOPM)
   printf("%s: handling phase mismatch from SCRIPTS.\n",
          sym_name(np));
 }



 if (sym_verbose >= 2) {
  printf ("%s: initial SCNTL3/DMODE/DCNTL/CTEST3/4/5 = "
   "(hex) %02x/%02x/%02x/%02x/%02x/%02x\n",
   sym_name(np), np->sv_scntl3, np->sv_dmode, np->sv_dcntl,
   np->sv_ctest3, np->sv_ctest4, np->sv_ctest5);

  printf ("%s: final   SCNTL3/DMODE/DCNTL/CTEST3/4/5 = "
   "(hex) %02x/%02x/%02x/%02x/%02x/%02x\n",
   sym_name(np), np->rv_scntl3, np->rv_dmode, np->rv_dcntl,
   np->rv_ctest3, np->rv_ctest4, np->rv_ctest5);
 }

 return 0;
}

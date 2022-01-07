
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahc_softc {char channel; int bugs; int instruction_ram_size; int features; int chip; int dev_softc; } ;
typedef int ahc_dev_softc_t ;


 int AHC_AIC7850 ;
 int AHC_AIC7850_FE ;
 int AHC_CACHETHEN_BUG ;
 int AHC_PCI_2_1_RETRY_BUG ;
 int AHC_PCI_MWI_BUG ;
 int AHC_TMODE_WIDEODD_BUG ;
 int PCIR_REVID ;
 int ahc_pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
ahc_aic785X_setup(struct ahc_softc *ahc)
{
 ahc_dev_softc_t pci;
 uint8_t rev;

 pci = ahc->dev_softc;
 ahc->channel = 'A';
 ahc->chip = AHC_AIC7850;
 ahc->features = AHC_AIC7850_FE;
 ahc->bugs |= AHC_TMODE_WIDEODD_BUG|AHC_CACHETHEN_BUG|AHC_PCI_MWI_BUG;
 rev = ahc_pci_read_config(pci, PCIR_REVID, 1);
 if (rev >= 1)
  ahc->bugs |= AHC_PCI_2_1_RETRY_BUG;
 ahc->instruction_ram_size = 512;
 return (0);
}

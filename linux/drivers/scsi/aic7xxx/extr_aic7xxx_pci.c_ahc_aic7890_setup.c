
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ahc_softc {char channel; int bugs; int instruction_ram_size; int flags; int features; int chip; int dev_softc; } ;
typedef int ahc_dev_softc_t ;


 int AHC_AIC7890 ;
 int AHC_AIC7890_FE ;
 int AHC_AUTOFLUSH_BUG ;
 int AHC_CACHETHEN_BUG ;
 int AHC_NEWEEPROM_FMT ;
 int PCIR_REVID ;
 scalar_t__ ahc_pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
ahc_aic7890_setup(struct ahc_softc *ahc)
{
 ahc_dev_softc_t pci;
 uint8_t rev;

 pci = ahc->dev_softc;
 ahc->channel = 'A';
 ahc->chip = AHC_AIC7890;
 ahc->features = AHC_AIC7890_FE;
 ahc->flags |= AHC_NEWEEPROM_FMT;
 rev = ahc_pci_read_config(pci, PCIR_REVID, 1);
 if (rev == 0)
  ahc->bugs |= AHC_AUTOFLUSH_BUG|AHC_CACHETHEN_BUG;
 ahc->instruction_ram_size = 768;
 return (0);
}

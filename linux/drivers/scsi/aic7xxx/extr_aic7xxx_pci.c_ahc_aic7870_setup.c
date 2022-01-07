
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {char channel; int bugs; int instruction_ram_size; int features; int chip; } ;


 int AHC_AIC7870 ;
 int AHC_AIC7870_FE ;
 int AHC_CACHETHEN_BUG ;
 int AHC_PCI_MWI_BUG ;
 int AHC_TMODE_WIDEODD_BUG ;

__attribute__((used)) static int
ahc_aic7870_setup(struct ahc_softc *ahc)
{

 ahc->channel = 'A';
 ahc->chip = AHC_AIC7870;
 ahc->features = AHC_AIC7870_FE;
 ahc->bugs |= AHC_TMODE_WIDEODD_BUG|AHC_CACHETHEN_BUG|AHC_PCI_MWI_BUG;
 ahc->instruction_ram_size = 512;
 return (0);
}

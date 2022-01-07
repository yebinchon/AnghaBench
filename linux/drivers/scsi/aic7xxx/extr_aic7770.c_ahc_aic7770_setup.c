
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {char channel; char channel_b; int instruction_ram_size; int flags; int bugs; int features; int chip; } ;


 int AHC_AIC7770 ;
 int AHC_AIC7770_FE ;
 int AHC_PAGESCBS ;
 int AHC_TMODE_WIDEODD_BUG ;

__attribute__((used)) static int
ahc_aic7770_setup(struct ahc_softc *ahc)
{
 ahc->channel = 'A';
 ahc->channel_b = 'B';
 ahc->chip = AHC_AIC7770;
 ahc->features = AHC_AIC7770_FE;
 ahc->bugs |= AHC_TMODE_WIDEODD_BUG;
 ahc->flags |= AHC_PAGESCBS;
 ahc->instruction_ram_size = 448;
 return (0);
}

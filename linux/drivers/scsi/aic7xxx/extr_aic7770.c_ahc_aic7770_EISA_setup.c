
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int chip; } ;


 int AHC_EISA ;
 int ahc_aic7770_setup (struct ahc_softc*) ;

__attribute__((used)) static int
ahc_aic7770_EISA_setup(struct ahc_softc *ahc)
{
 int error;

 error = ahc_aic7770_setup(ahc);
 ahc->chip |= AHC_EISA;
 return (error);
}

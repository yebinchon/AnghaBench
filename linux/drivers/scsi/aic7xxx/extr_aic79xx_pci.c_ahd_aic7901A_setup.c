
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int features; int chip; } ;


 int AHD_AIC7901A ;
 int AHD_AIC7901A_FE ;
 int ahd_aic790X_setup (struct ahd_softc*) ;

__attribute__((used)) static int
ahd_aic7901A_setup(struct ahd_softc *ahd)
{

 ahd->chip = AHD_AIC7901A;
 ahd->features = AHD_AIC7901A_FE;
 return (ahd_aic790X_setup(ahd));
}

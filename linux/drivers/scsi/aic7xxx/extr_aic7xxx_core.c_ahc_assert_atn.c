
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_softc {int features; } ;


 int AHC_DT ;
 int ATNO ;
 int SCSISIGI ;
 int SCSISIGO ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int ) ;

__attribute__((used)) static void
ahc_assert_atn(struct ahc_softc *ahc)
{
 u_int scsisigo;

 scsisigo = ATNO;
 if ((ahc->features & AHC_DT) == 0)
  scsisigo |= ahc_inb(ahc, SCSISIGI);
 ahc_outb(ahc, SCSISIGO, scsisigo);
}

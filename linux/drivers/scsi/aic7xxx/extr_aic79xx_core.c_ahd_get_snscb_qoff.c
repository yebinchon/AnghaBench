
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_CCHAN_MSK ;
 int SNSCB_QOFF ;
 int ahd_inw (struct ahd_softc*,int ) ;
 int ahd_outw (struct ahd_softc*,int ,int ) ;

__attribute__((used)) static u_int
ahd_get_snscb_qoff(struct ahd_softc *ahd)
{
 u_int oldvalue;

 AHD_ASSERT_MODES(ahd, AHD_MODE_CCHAN_MSK, AHD_MODE_CCHAN_MSK);
 oldvalue = ahd_inw(ahd, SNSCB_QOFF);
 ahd_outw(ahd, SNSCB_QOFF, oldvalue);
 return (oldvalue);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int HESCB_QOFF ;
 int ahd_outb (struct ahd_softc*,int ,int ) ;

__attribute__((used)) static void
ahd_set_hescb_qoff(struct ahd_softc *ahd, u_int value)
{
 ahd_outb(ahd, HESCB_QOFF, value);
}

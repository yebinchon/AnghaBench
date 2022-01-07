
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct ahc_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {scalar_t__ qfrozen; int host; } ;


 int ahc_lock (struct ahc_softc*,int *) ;
 int ahc_unlock (struct ahc_softc*,int *) ;
 int scsi_unblock_requests (int ) ;

__attribute__((used)) static void
ahc_linux_release_simq(struct ahc_softc *ahc)
{
 u_long s;
 int unblock_reqs;

 unblock_reqs = 0;
 ahc_lock(ahc, &s);
 if (ahc->platform_data->qfrozen > 0)
  ahc->platform_data->qfrozen--;
 if (ahc->platform_data->qfrozen == 0)
  unblock_reqs = 1;
 ahc_unlock(ahc, &s);






 if (unblock_reqs)
  scsi_unblock_requests(ahc->platform_data->host);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_cmd {int dummy; } ;
struct TYPE_2__ {int dmamap; } ;
struct ahd_softc {int flags; TYPE_1__ shared_data_map; int shared_data_dmat; } ;


 int AHD_TARGETROLE ;
 int AHD_TMODE_CMDS ;
 int ahd_dmamap_sync (struct ahd_softc*,int ,int ,int ,int,int) ;
 int ahd_targetcmd_offset (struct ahd_softc*,int ) ;

__attribute__((used)) static void
ahd_sync_tqinfifo(struct ahd_softc *ahd, int op)
{
}

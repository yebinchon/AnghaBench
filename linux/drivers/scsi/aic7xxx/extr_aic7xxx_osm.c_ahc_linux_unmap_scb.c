
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct scb {struct scsi_cmnd* io_ctx; } ;
struct ahc_softc {int dummy; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int ahc_sync_sglist (struct ahc_softc*,struct scb*,int ) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;

__attribute__((used)) static void
ahc_linux_unmap_scb(struct ahc_softc *ahc, struct scb *scb)
{
 struct scsi_cmnd *cmd;

 cmd = scb->io_ctx;
 ahc_sync_sglist(ahc, scb, BUS_DMASYNC_POSTWRITE);

 scsi_dma_unmap(cmd);
}

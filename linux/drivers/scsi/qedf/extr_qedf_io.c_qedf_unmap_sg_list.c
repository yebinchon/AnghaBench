
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int sc_data_direction; } ;
struct qedf_ioreq {TYPE_2__* bd_tbl; struct scsi_cmnd* sc_cmd; } ;
struct qedf_ctx {TYPE_1__* pdev; } ;
struct TYPE_4__ {scalar_t__ bd_valid; } ;
struct TYPE_3__ {int dev; } ;


 int dma_unmap_sg (int *,int ,scalar_t__,int ) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;

__attribute__((used)) static void qedf_unmap_sg_list(struct qedf_ctx *qedf, struct qedf_ioreq *io_req)
{
 struct scsi_cmnd *sc = io_req->sc_cmd;

 if (io_req->bd_tbl->bd_valid && sc && scsi_sg_count(sc)) {
  dma_unmap_sg(&qedf->pdev->dev, scsi_sglist(sc),
      scsi_sg_count(sc), sc->sc_data_direction);
  io_req->bd_tbl->bd_valid = 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int * rsp; int rsp_dma; int rsp_allocated_size; int * req; int req_dma; int req_allocated_size; } ;
struct TYPE_15__ {TYPE_3__ ctarg; int els_plogi; } ;
struct srb_iocb {TYPE_4__ u; } ;
struct TYPE_16__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_17__ {int type; int (* free ) (TYPE_6__*) ;TYPE_5__ u; } ;
typedef TYPE_6__ srb_t ;
struct TYPE_18__ {TYPE_2__* hw; } ;
typedef TYPE_7__ scsi_qla_host_t ;
struct TYPE_13__ {TYPE_1__* pdev; } ;
struct TYPE_12__ {int dev; } ;




 int dma_free_coherent (int *,int ,int *,int ) ;
 int qla2x00_els_dcmd2_free (TYPE_7__*,int *) ;
 int stub1 (TYPE_6__*) ;

void qla24xx_sp_unmap(scsi_qla_host_t *vha, srb_t *sp)
{
 struct srb_iocb *c = &sp->u.iocb_cmd;

 switch (sp->type) {
 case 128:
  qla2x00_els_dcmd2_free(vha, &c->u.els_plogi);
  break;
 case 129:
 default:
  if (sp->u.iocb_cmd.u.ctarg.req) {
   dma_free_coherent(&vha->hw->pdev->dev,
       sp->u.iocb_cmd.u.ctarg.req_allocated_size,
       sp->u.iocb_cmd.u.ctarg.req,
       sp->u.iocb_cmd.u.ctarg.req_dma);
   sp->u.iocb_cmd.u.ctarg.req = ((void*)0);
  }

  if (sp->u.iocb_cmd.u.ctarg.rsp) {
   dma_free_coherent(&vha->hw->pdev->dev,
       sp->u.iocb_cmd.u.ctarg.rsp_allocated_size,
       sp->u.iocb_cmd.u.ctarg.rsp,
       sp->u.iocb_cmd.u.ctarg.rsp_dma);
   sp->u.iocb_cmd.u.ctarg.rsp = ((void*)0);
  }
  break;
 }

 sp->free(sp);
}

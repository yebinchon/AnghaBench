
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ct_sns_pkt {int dummy; } ;
struct TYPE_12__ {int * ct_sns; int ct_sns_dma; } ;
struct TYPE_13__ {int list; TYPE_4__ ct_desc; TYPE_3__* vha; } ;
typedef TYPE_5__ fc_port_t ;
struct TYPE_11__ {TYPE_2__* hw; } ;
struct TYPE_10__ {TYPE_1__* pdev; } ;
struct TYPE_9__ {int dev; } ;


 int dma_free_coherent (int *,int,int *,int ) ;
 int kfree (TYPE_5__*) ;
 int list_del (int *) ;
 int qla2x00_clear_loop_id (TYPE_5__*) ;

void
qla2x00_free_fcport(fc_port_t *fcport)
{
 if (fcport->ct_desc.ct_sns) {
  dma_free_coherent(&fcport->vha->hw->pdev->dev,
   sizeof(struct ct_sns_pkt), fcport->ct_desc.ct_sns,
   fcport->ct_desc.ct_sns_dma);

  fcport->ct_desc.ct_sns = ((void*)0);
 }
 list_del(&fcport->list);
 qla2x00_clear_loop_id(fcport);
 kfree(fcport);
}

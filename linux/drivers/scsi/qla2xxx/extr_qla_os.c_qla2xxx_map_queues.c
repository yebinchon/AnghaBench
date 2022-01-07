
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct blk_mq_queue_map {int dummy; } ;
struct TYPE_4__ {struct blk_mq_queue_map* map; } ;
struct Scsi_Host {TYPE_1__ tag_set; scalar_t__ hostdata; } ;
struct TYPE_5__ {int irq_offset; TYPE_3__* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_6__ {int pdev; int mqiobase; } ;


 size_t HCTX_TYPE_DEFAULT ;
 scalar_t__ USER_CTRL_IRQ (TYPE_3__*) ;
 int blk_mq_map_queues (struct blk_mq_queue_map*) ;
 int blk_mq_pci_map_queues (struct blk_mq_queue_map*,int ,int ) ;

__attribute__((used)) static int qla2xxx_map_queues(struct Scsi_Host *shost)
{
 int rc;
 scsi_qla_host_t *vha = (scsi_qla_host_t *)shost->hostdata;
 struct blk_mq_queue_map *qmap = &shost->tag_set.map[HCTX_TYPE_DEFAULT];

 if (USER_CTRL_IRQ(vha->hw) || !vha->hw->mqiobase)
  rc = blk_mq_map_queues(qmap);
 else
  rc = blk_mq_pci_map_queues(qmap, vha->hw->pdev, vha->irq_offset);
 return rc;
}

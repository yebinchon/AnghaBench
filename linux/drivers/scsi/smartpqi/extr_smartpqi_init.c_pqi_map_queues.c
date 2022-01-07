
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {int pci_dev; } ;
struct TYPE_2__ {int * map; } ;
struct Scsi_Host {TYPE_1__ tag_set; } ;


 size_t HCTX_TYPE_DEFAULT ;
 int blk_mq_pci_map_queues (int *,int ,int ) ;
 struct pqi_ctrl_info* shost_to_hba (struct Scsi_Host*) ;

__attribute__((used)) static int pqi_map_queues(struct Scsi_Host *shost)
{
 struct pqi_ctrl_info *ctrl_info = shost_to_hba(shost);

 return blk_mq_pci_map_queues(&shost->tag_set.map[HCTX_TYPE_DEFAULT],
     ctrl_info->pci_dev, 0);
}

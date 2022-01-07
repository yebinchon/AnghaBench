
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {struct Scsi_Host* scsi_host; TYPE_1__* pdev; int maxsgentries; scalar_t__ nr_cmds; } ;
struct Scsi_Host {int this_id; int max_channel; unsigned long* hostdata; int irq; int unique_id; int transportt; int sg_tablesize; scalar_t__ can_queue; scalar_t__ cmd_per_lun; void* max_id; void* max_lun; int max_cmd_len; scalar_t__ n_io_port; scalar_t__ io_port; } ;
typedef int h ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 void* HPSA_MAX_LUN ;
 scalar_t__ HPSA_NRESERVED_CMDS ;
 int MAX_COMMAND_SIZE ;
 int dev_err (int *,char*) ;
 int hpsa_driver_template ;
 int hpsa_sas_transport_template ;
 int pci_irq_vector (TYPE_1__*,int ) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;

__attribute__((used)) static int hpsa_scsi_host_alloc(struct ctlr_info *h)
{
 struct Scsi_Host *sh;

 sh = scsi_host_alloc(&hpsa_driver_template, sizeof(h));
 if (sh == ((void*)0)) {
  dev_err(&h->pdev->dev, "scsi_host_alloc failed\n");
  return -ENOMEM;
 }

 sh->io_port = 0;
 sh->n_io_port = 0;
 sh->this_id = -1;
 sh->max_channel = 3;
 sh->max_cmd_len = MAX_COMMAND_SIZE;
 sh->max_lun = HPSA_MAX_LUN;
 sh->max_id = HPSA_MAX_LUN;
 sh->can_queue = h->nr_cmds - HPSA_NRESERVED_CMDS;
 sh->cmd_per_lun = sh->can_queue;
 sh->sg_tablesize = h->maxsgentries;
 sh->transportt = hpsa_sas_transport_template;
 sh->hostdata[0] = (unsigned long) h;
 sh->irq = pci_irq_vector(h->pdev, 0);
 sh->unique_id = sh->irq;

 h->scsi_host = sh;
 return 0;
}

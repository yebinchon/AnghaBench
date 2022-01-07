
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {struct Scsi_Host* scsi_host; int ctrl_id; TYPE_1__* pci_dev; int num_queue_groups; int sg_tablesize; int scsi_ml_can_queue; int max_sectors; } ;
struct Scsi_Host {int this_id; unsigned long* hostdata; int nr_hw_queues; int irq; int unique_id; int transportt; int sg_tablesize; int can_queue; int cmd_per_lun; int max_sectors; int max_id; int max_lun; int max_cmd_len; int max_channel; scalar_t__ n_io_port; scalar_t__ io_port; } ;
typedef int ctrl_info ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int MAX_COMMAND_SIZE ;
 int PQI_MAX_BUS ;
 int dev_err (int *,char*,int ) ;
 int pci_irq_vector (TYPE_1__*,int ) ;
 int pqi_add_sas_host (struct Scsi_Host*,struct pqi_ctrl_info*) ;
 int pqi_driver_template ;
 int pqi_sas_transport_template ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static int pqi_register_scsi(struct pqi_ctrl_info *ctrl_info)
{
 int rc;
 struct Scsi_Host *shost;

 shost = scsi_host_alloc(&pqi_driver_template, sizeof(ctrl_info));
 if (!shost) {
  dev_err(&ctrl_info->pci_dev->dev,
   "scsi_host_alloc failed for controller %u\n",
   ctrl_info->ctrl_id);
  return -ENOMEM;
 }

 shost->io_port = 0;
 shost->n_io_port = 0;
 shost->this_id = -1;
 shost->max_channel = PQI_MAX_BUS;
 shost->max_cmd_len = MAX_COMMAND_SIZE;
 shost->max_lun = ~0;
 shost->max_id = ~0;
 shost->max_sectors = ctrl_info->max_sectors;
 shost->can_queue = ctrl_info->scsi_ml_can_queue;
 shost->cmd_per_lun = shost->can_queue;
 shost->sg_tablesize = ctrl_info->sg_tablesize;
 shost->transportt = pqi_sas_transport_template;
 shost->irq = pci_irq_vector(ctrl_info->pci_dev, 0);
 shost->unique_id = shost->irq;
 shost->nr_hw_queues = ctrl_info->num_queue_groups;
 shost->hostdata[0] = (unsigned long)ctrl_info;

 rc = scsi_add_host(shost, &ctrl_info->pci_dev->dev);
 if (rc) {
  dev_err(&ctrl_info->pci_dev->dev,
   "scsi_add_host failed for controller %u\n",
   ctrl_info->ctrl_id);
  goto free_host;
 }

 rc = pqi_add_sas_host(shost, ctrl_info);
 if (rc) {
  dev_err(&ctrl_info->pci_dev->dev,
   "add SAS host failed for controller %u\n",
   ctrl_info->ctrl_id);
  goto remove_host;
 }

 ctrl_info->scsi_host = shost;

 return 0;

remove_host:
 scsi_remove_host(shost);
free_host:
 scsi_host_put(shost);

 return rc;
}

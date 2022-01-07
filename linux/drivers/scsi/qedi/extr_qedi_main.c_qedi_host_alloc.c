
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct pci_dev* pdev; int host_no; } ;
struct qedi_ctx {int max_sqes; int max_active_conns; TYPE_1__ dbg_ctx; struct pci_dev* pdev; struct Scsi_Host* shost; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int max_cmd_len; int nr_hw_queues; int host_no; int transportt; int max_lun; scalar_t__ max_channel; int max_id; } ;


 int ISCSI_MAX_SESS_PER_HBA ;
 int MIN_NUM_CPUS_MSIX (struct qedi_ctx*) ;
 int QEDI_ERR (int *,char*) ;
 int QEDI_MAX_ISCSI_CONNS_PER_HBA ;
 int QEDI_SQ_SIZE ;
 struct Scsi_Host* iscsi_host_alloc (int *,int,int ) ;
 struct qedi_ctx* iscsi_host_priv (struct Scsi_Host*) ;
 int memset (struct qedi_ctx*,int ,int) ;
 int pci_set_drvdata (struct pci_dev*,struct qedi_ctx*) ;
 int qedi_host_template ;
 int qedi_scsi_transport ;

__attribute__((used)) static struct qedi_ctx *qedi_host_alloc(struct pci_dev *pdev)
{
 struct Scsi_Host *shost;
 struct qedi_ctx *qedi = ((void*)0);

 shost = iscsi_host_alloc(&qedi_host_template,
     sizeof(struct qedi_ctx), 0);
 if (!shost) {
  QEDI_ERR(((void*)0), "Could not allocate shost\n");
  goto exit_setup_shost;
 }

 shost->max_id = QEDI_MAX_ISCSI_CONNS_PER_HBA;
 shost->max_channel = 0;
 shost->max_lun = ~0;
 shost->max_cmd_len = 16;
 shost->transportt = qedi_scsi_transport;

 qedi = iscsi_host_priv(shost);
 memset(qedi, 0, sizeof(*qedi));
 qedi->shost = shost;
 qedi->dbg_ctx.host_no = shost->host_no;
 qedi->pdev = pdev;
 qedi->dbg_ctx.pdev = pdev;
 qedi->max_active_conns = ISCSI_MAX_SESS_PER_HBA;
 qedi->max_sqes = QEDI_SQ_SIZE;

 shost->nr_hw_queues = MIN_NUM_CPUS_MSIX(qedi);

 pci_set_drvdata(pdev, qedi);

exit_setup_shost:
 return qedi;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {int this_id; int name; } ;
struct qlogicfas408_priv {int qlirq; int qbase; int qinitid; int qinfo; int int_type; struct Scsi_Host* shost; } ;
struct pcmcia_device {int dummy; } ;
struct Scsi_Host {int io_port; int n_io_port; int dma_channel; int irq; } ;


 int INT_TYPE ;
 int QL_TURBO_PDMA ;
 int free_irq (int,struct Scsi_Host*) ;
 struct qlogicfas408_priv* get_priv_by_host (struct Scsi_Host*) ;
 int qlogic_name ;
 int qlogicfas408_get_chip_type (int,int ) ;
 int qlogicfas408_ihandl ;
 int qlogicfas408_setup (int,int,int ) ;
 scalar_t__ request_irq (int,int ,int ,int ,struct Scsi_Host*) ;
 scalar_t__ scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (struct scsi_host_template*,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 int sprintf (int ,char*,int,int,int,int) ;

__attribute__((used)) static struct Scsi_Host *qlogic_detect(struct scsi_host_template *host,
    struct pcmcia_device *link, int qbase, int qlirq)
{
 int qltyp;
 int qinitid;
 struct Scsi_Host *shost;
 struct qlogicfas408_priv *priv;

 qltyp = qlogicfas408_get_chip_type(qbase, INT_TYPE);
 qinitid = host->this_id;
 if (qinitid < 0)
  qinitid = 7;

 qlogicfas408_setup(qbase, qinitid, INT_TYPE);

 host->name = qlogic_name;
 shost = scsi_host_alloc(host, sizeof(struct qlogicfas408_priv));
 if (!shost)
  goto err;
 shost->io_port = qbase;
 shost->n_io_port = 16;
 shost->dma_channel = -1;
 if (qlirq != -1)
  shost->irq = qlirq;

 priv = get_priv_by_host(shost);
 priv->qlirq = qlirq;
 priv->qbase = qbase;
 priv->qinitid = qinitid;
 priv->shost = shost;
 priv->int_type = INT_TYPE;

 if (request_irq(qlirq, qlogicfas408_ihandl, 0, qlogic_name, shost))
  goto free_scsi_host;

 sprintf(priv->qinfo,
  "Qlogicfas Driver version 0.46, chip %02X at %03X, IRQ %d, TPdma:%d",
  qltyp, qbase, qlirq, QL_TURBO_PDMA);

 if (scsi_add_host(shost, ((void*)0)))
  goto free_interrupt;

 scsi_scan_host(shost);

 return shost;

free_interrupt:
 free_irq(qlirq, shost);

free_scsi_host:
 scsi_host_put(shost);

err:
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlogicfas408_priv {int dummy; } ;
struct Scsi_Host {scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct Scsi_Host*) ;
 struct qlogicfas408_priv* get_priv_by_host (struct Scsi_Host*) ;
 int qlogicfas408_disable_ints (struct qlogicfas408_priv*) ;
 int release_region (scalar_t__,scalar_t__) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static int qlogicfas_release(struct Scsi_Host *shost)
{
 struct qlogicfas408_priv *priv = get_priv_by_host(shost);

 scsi_remove_host(shost);
 if (shost->irq) {
  qlogicfas408_disable_ints(priv);
  free_irq(shost->irq, shost);
 }
 if (shost->io_port && shost->n_io_port)
  release_region(shost->io_port, shost->n_io_port);
 scsi_host_put(shost);

 return 0;
}

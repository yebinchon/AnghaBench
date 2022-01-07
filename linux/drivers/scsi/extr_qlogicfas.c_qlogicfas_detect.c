
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {int dummy; } ;
struct qlogicfas408_priv {struct qlogicfas408_priv* next; } ;
struct Scsi_Host {int dummy; } ;


 int MAX_QLOGICFAS ;
 struct Scsi_Host* __qlogicfas_detect (struct scsi_host_template*,int ,int ) ;
 struct qlogicfas408_priv* cards ;
 struct qlogicfas408_priv* get_priv_by_host (struct Scsi_Host*) ;
 int * iobase ;
 int * irq ;

__attribute__((used)) static int qlogicfas_detect(struct scsi_host_template *sht)
{
 struct Scsi_Host *shost;
 struct qlogicfas408_priv *priv;
 int num;

 for (num = 0; num < MAX_QLOGICFAS; num++) {
  shost = __qlogicfas_detect(sht, iobase[num], irq[num]);
  if (shost == ((void*)0)) {

   break;
  }
  priv = get_priv_by_host(shost);
  priv->next = cards;
  cards = priv;
 }

 return num;
}

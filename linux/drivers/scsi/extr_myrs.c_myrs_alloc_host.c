
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct myrs_hba {struct Scsi_Host* host; int cinfo_mutex; int dcmd_mutex; } ;
struct Scsi_Host {int max_cmd_len; int max_lun; } ;


 int mutex_init (int *) ;
 int myrs_template ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 struct myrs_hba* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static struct myrs_hba *myrs_alloc_host(struct pci_dev *pdev,
  const struct pci_device_id *entry)
{
 struct Scsi_Host *shost;
 struct myrs_hba *cs;

 shost = scsi_host_alloc(&myrs_template, sizeof(struct myrs_hba));
 if (!shost)
  return ((void*)0);

 shost->max_cmd_len = 16;
 shost->max_lun = 256;
 cs = shost_priv(shost);
 mutex_init(&cs->dcmd_mutex);
 mutex_init(&cs->cinfo_mutex);
 cs->host = shost;

 return cs;
}

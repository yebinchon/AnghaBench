
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {int lun; int target; int bus; } ;
struct ctlr_info {int sas_host; int scsi_host; } ;


 int hpsa_add_sas_device (int ,struct hpsa_scsi_dev_t*) ;
 scalar_t__ is_logical_device (struct hpsa_scsi_dev_t*) ;
 int scsi_add_device (int ,int ,int ,int ) ;

__attribute__((used)) static int hpsa_add_device(struct ctlr_info *h, struct hpsa_scsi_dev_t *device)
{
 int rc = 0;

 if (!h->scsi_host)
  return 1;

 if (is_logical_device(device))
  rc = scsi_add_device(h->scsi_host, device->bus,
     device->target, device->lun);
 else
  rc = hpsa_add_sas_device(h->sas_host, device);

 return rc;
}

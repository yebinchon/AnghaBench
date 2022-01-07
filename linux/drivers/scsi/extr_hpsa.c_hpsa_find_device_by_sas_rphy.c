
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_rphy {int dummy; } ;
struct hpsa_scsi_dev_t {TYPE_1__* sas_port; } ;
struct ctlr_info {int ndevices; struct hpsa_scsi_dev_t** dev; } ;
struct TYPE_2__ {struct sas_rphy* rphy; } ;



__attribute__((used)) static struct hpsa_scsi_dev_t
 *hpsa_find_device_by_sas_rphy(struct ctlr_info *h,
     struct sas_rphy *rphy)
{
 int i;
 struct hpsa_scsi_dev_t *device;

 for (i = 0; i < h->ndevices; i++) {
  device = h->dev[i];
  if (!device->sas_port)
   continue;
  if (device->sas_port->rphy == rphy)
   return device;
 }

 return ((void*)0);
}

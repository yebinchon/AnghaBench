
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int * sas_port; } ;


 int pqi_free_sas_port (int *) ;

void pqi_remove_sas_device(struct pqi_scsi_dev *device)
{
 if (device->sas_port) {
  pqi_free_sas_port(device->sas_port);
  device->sas_port = ((void*)0);
 }
}

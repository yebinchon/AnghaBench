
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {int * sas_port; } ;


 int hpsa_free_sas_port (int *) ;

__attribute__((used)) static void hpsa_remove_sas_device(struct hpsa_scsi_dev_t *device)
{
 if (device->sas_port) {
  hpsa_free_sas_port(device->sas_port);
  device->sas_port = ((void*)0);
 }
}

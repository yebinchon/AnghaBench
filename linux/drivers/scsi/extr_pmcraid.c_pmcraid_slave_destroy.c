
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int * hostdata; } ;
struct pmcraid_resource_entry {int * scsi_dev; } ;



__attribute__((used)) static void pmcraid_slave_destroy(struct scsi_device *scsi_dev)
{
 struct pmcraid_resource_entry *res;

 res = (struct pmcraid_resource_entry *)scsi_dev->hostdata;

 if (res)
  res->scsi_dev = ((void*)0);

 scsi_dev->hostdata = ((void*)0);
}

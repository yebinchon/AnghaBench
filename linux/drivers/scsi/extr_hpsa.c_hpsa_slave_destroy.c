
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct hpsa_scsi_dev_t* hostdata; } ;
struct hpsa_scsi_dev_t {int was_removed; } ;



__attribute__((used)) static void hpsa_slave_destroy(struct scsi_device *sdev)
{
 struct hpsa_scsi_dev_t *hdev = ((void*)0);

 hdev = sdev->hostdata;

 if (hdev)
  hdev->was_removed = 1;
}

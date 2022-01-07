
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int hostdata; } ;


 int kfree (int ) ;

__attribute__((used)) static void myrs_slave_destroy(struct scsi_device *sdev)
{
 kfree(sdev->hostdata);
}

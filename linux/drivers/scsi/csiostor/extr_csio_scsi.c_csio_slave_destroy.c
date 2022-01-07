
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int * hostdata; } ;



__attribute__((used)) static void
csio_slave_destroy(struct scsi_device *sdev)
{
 sdev->hostdata = ((void*)0);
}

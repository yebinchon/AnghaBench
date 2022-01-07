
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int
lpfc_no_slave(struct scsi_device *sdev)
{
 return -ENODEV;
}

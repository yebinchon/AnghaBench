
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int inquiry_len; } ;



__attribute__((used)) static int slave_alloc(struct scsi_device *sdev)
{





 sdev->inquiry_len = 36;
 return 0;
}

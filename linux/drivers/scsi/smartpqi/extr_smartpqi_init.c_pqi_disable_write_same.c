
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int no_write_same; } ;



__attribute__((used)) static inline void pqi_disable_write_same(struct scsi_device *sdev)
{
 sdev->no_write_same = 1;
}

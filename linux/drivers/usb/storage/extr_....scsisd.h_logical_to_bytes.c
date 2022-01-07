
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {unsigned int sector_size; } ;
typedef unsigned int sector_t ;



__attribute__((used)) static inline unsigned int logical_to_bytes(struct scsi_device *sdev, sector_t blocks)
{
 return blocks * sdev->sector_size;
}

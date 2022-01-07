
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sector_size; } ;
typedef int sector_t ;


 int ilog2 (int ) ;

__attribute__((used)) static inline sector_t logical_to_sectors(struct scsi_device *sdev, sector_t blocks)
{
 return blocks << (ilog2(sdev->sector_size) - 9);
}

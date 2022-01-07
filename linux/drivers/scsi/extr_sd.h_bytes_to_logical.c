
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sector_size; } ;
typedef unsigned int sector_t ;


 unsigned int ilog2 (int ) ;

__attribute__((used)) static inline sector_t bytes_to_logical(struct scsi_device *sdev, unsigned int bytes)
{
 return bytes >> ilog2(sdev->sector_size);
}

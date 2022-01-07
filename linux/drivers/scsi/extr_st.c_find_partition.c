
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tape {int dummy; } ;


 int EIO ;
 int ST_NBR_PARTITIONS ;
 int get_location (struct scsi_tape*,unsigned int*,int*,int) ;

__attribute__((used)) static int find_partition(struct scsi_tape *STp)
{
 int i, partition;
 unsigned int block;

 if ((i = get_location(STp, &block, &partition, 1)) < 0)
  return i;
 if (partition >= ST_NBR_PARTITIONS)
  return (-EIO);
 return partition;
}

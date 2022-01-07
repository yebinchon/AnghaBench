
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {unsigned char id; TYPE_1__* host; } ;
struct mvumi_hba {unsigned char max_target_id; int* target_map; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 int EINVAL ;

__attribute__((used)) static int mvumi_slave_configure(struct scsi_device *sdev)
{
 struct mvumi_hba *mhba;
 unsigned char bitcount = sizeof(unsigned char) * 8;

 mhba = (struct mvumi_hba *) sdev->host->hostdata;
 if (sdev->id >= mhba->max_target_id)
  return -EINVAL;

 mhba->target_map[sdev->id / bitcount] |= (1 << (sdev->id % bitcount));
 return 0;
}

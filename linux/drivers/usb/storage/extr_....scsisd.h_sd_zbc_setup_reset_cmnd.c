
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
typedef int blk_status_t ;


 int BLK_STS_TARGET ;

__attribute__((used)) static inline blk_status_t sd_zbc_setup_reset_cmnd(struct scsi_cmnd *cmd,
         bool all)
{
 return BLK_STS_TARGET;
}

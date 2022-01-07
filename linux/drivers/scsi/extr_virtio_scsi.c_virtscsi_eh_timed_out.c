
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;


 int BLK_EH_RESET_TIMER ;

__attribute__((used)) static enum blk_eh_timer_return virtscsi_eh_timed_out(struct scsi_cmnd *scmnd)
{
 return BLK_EH_RESET_TIMER;
}

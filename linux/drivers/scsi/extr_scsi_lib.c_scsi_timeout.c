
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;


 int BLK_EH_RESET_TIMER ;
 int scsi_times_out (struct request*) ;

__attribute__((used)) static enum blk_eh_timer_return scsi_timeout(struct request *req,
  bool reserved)
{
 if (reserved)
  return BLK_EH_RESET_TIMER;
 return scsi_times_out(req);
}

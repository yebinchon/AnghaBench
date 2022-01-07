
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;
struct bio {scalar_t__ bi_status; struct se_cmd* bi_private; } ;


 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_GOOD ;
 int bio_put (struct bio*) ;
 int pr_err (char*,scalar_t__) ;
 int target_complete_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static void iblock_end_io_flush(struct bio *bio)
{
 struct se_cmd *cmd = bio->bi_private;

 if (bio->bi_status)
  pr_err("IBLOCK: cache flush failed: %d\n", bio->bi_status);

 if (cmd) {
  if (bio->bi_status)
   target_complete_cmd(cmd, SAM_STAT_CHECK_CONDITION);
  else
   target_complete_cmd(cmd, SAM_STAT_GOOD);
 }

 bio_put(bio);
}

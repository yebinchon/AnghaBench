
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_cmd {struct iblock_req* priv; } ;
struct iblock_req {int ib_bio_err_cnt; int pending; } ;


 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_GOOD ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct iblock_req*) ;
 int refcount_dec_and_test (int *) ;
 int target_complete_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static void iblock_complete_cmd(struct se_cmd *cmd)
{
 struct iblock_req *ibr = cmd->priv;
 u8 status;

 if (!refcount_dec_and_test(&ibr->pending))
  return;

 if (atomic_read(&ibr->ib_bio_err_cnt))
  status = SAM_STAT_CHECK_CONDITION;
 else
  status = SAM_STAT_GOOD;

 target_complete_cmd(cmd, status);
 kfree(ibr);
}

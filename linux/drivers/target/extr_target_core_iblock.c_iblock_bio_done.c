
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {struct iblock_req* priv; } ;
struct iblock_req {int ib_bio_err_cnt; } ;
struct bio {scalar_t__ bi_status; struct se_cmd* bi_private; } ;


 int atomic_inc (int *) ;
 int bio_put (struct bio*) ;
 int iblock_complete_cmd (struct se_cmd*) ;
 int pr_err (char*,struct bio*,scalar_t__) ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static void iblock_bio_done(struct bio *bio)
{
 struct se_cmd *cmd = bio->bi_private;
 struct iblock_req *ibr = cmd->priv;

 if (bio->bi_status) {
  pr_err("bio error: %p,  err: %d\n", bio, bio->bi_status);



  atomic_inc(&ibr->ib_bio_err_cnt);
  smp_mb__after_atomic();
 }

 bio_put(bio);

 iblock_complete_cmd(cmd);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bm_mc_result {int verb; } ;
typedef int u32 ;
struct bman_portal {int p; } ;
struct bm_mc_command {int bpid; } ;


 int BM_MCC_VERB_CMD_ACQUIRE ;
 int BM_MCR_VERB_ACQUIRE_BUFCOUNT ;
 int ETIMEDOUT ;
 int bm_mc_commit (int *,int) ;
 int bm_mc_result_timeout (int *,union bm_mc_result**) ;
 struct bm_mc_command* bm_mc_start (int *) ;
 struct bman_portal* get_affine_portal () ;
 int pr_crit (char*) ;
 int put_affine_portal () ;

int bm_shutdown_pool(u32 bpid)
{
 int err = 0;
 struct bm_mc_command *bm_cmd;
 union bm_mc_result *bm_res;


 struct bman_portal *p = get_affine_portal();
 while (1) {

  bm_cmd = bm_mc_start(&p->p);
  bm_cmd->bpid = bpid;
  bm_mc_commit(&p->p, BM_MCC_VERB_CMD_ACQUIRE | 1);
  if (!bm_mc_result_timeout(&p->p, &bm_res)) {
   pr_crit("BMan Acquire Command timedout\n");
   err = -ETIMEDOUT;
   goto done;
  }
  if (!(bm_res->verb & BM_MCR_VERB_ACQUIRE_BUFCOUNT)) {

   goto done;
  }
 }
done:
 put_affine_portal();
 return 0;
}

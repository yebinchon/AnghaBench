
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfa; } ;
struct bfa_bsg_ioc_stats_s {int status; int ioc_stats; } ;


 int BFA_STATUS_OK ;
 int bfa_ioc_get_stats (int *,int *) ;

int
bfad_iocmd_ioc_get_stats(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_ioc_stats_s *iocmd = (struct bfa_bsg_ioc_stats_s *)cmd;

 bfa_ioc_get_stats(&bfad->bfa, &iocmd->ioc_stats);
 iocmd->status = BFA_STATUS_OK;
 return 0;
}

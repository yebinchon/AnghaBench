
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_rcr {int ci; int cursor; int busy; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int BM_RCR_SIZE ;
 int BM_REG_RCR_CI_CINH ;
 int BM_REG_RCR_PI_CINH ;
 int DPAA_ASSERT (int) ;
 int bm_in (struct bm_portal*,int ) ;
 int pr_crit (char*) ;
 int rcr_ptr2idx (int ) ;

__attribute__((used)) static void bm_rcr_finish(struct bm_portal *portal)
{
}

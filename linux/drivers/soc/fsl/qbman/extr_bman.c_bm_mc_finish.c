
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_mc {scalar_t__ state; } ;
struct bm_portal {struct bm_mc mc; } ;


 int DPAA_ASSERT (int) ;
 scalar_t__ mc_idle ;
 int pr_crit (char*) ;

__attribute__((used)) static void bm_mc_finish(struct bm_portal *portal)
{







}

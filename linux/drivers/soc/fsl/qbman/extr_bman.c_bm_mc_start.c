
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_mc {scalar_t__ state; struct bm_mc_command* cr; } ;
struct bm_portal {struct bm_mc mc; } ;
struct bm_mc_command {int dummy; } ;


 int DPAA_ASSERT (int) ;
 int dpaa_zero (struct bm_mc_command*) ;
 scalar_t__ mc_idle ;
 scalar_t__ mc_user ;

__attribute__((used)) static inline struct bm_mc_command *bm_mc_start(struct bm_portal *portal)
{
 struct bm_mc *mc = &portal->mc;

 DPAA_ASSERT(mc->state == mc_idle);



 dpaa_zero(mc->cr);
 return mc->cr;
}

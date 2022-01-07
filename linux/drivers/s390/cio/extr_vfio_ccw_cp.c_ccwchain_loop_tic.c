
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_program {int dummy; } ;
struct ccwchain {int ch_len; struct ccw1* ch_ccw; } ;
struct ccw1 {int cda; } ;


 int ccw_is_tic (struct ccw1*) ;
 int ccwchain_handle_ccw (int ,struct channel_program*) ;
 scalar_t__ tic_target_chain_exists (struct ccw1*,struct channel_program*) ;

__attribute__((used)) static int ccwchain_loop_tic(struct ccwchain *chain, struct channel_program *cp)
{
 struct ccw1 *tic;
 int i, ret;

 for (i = 0; i < chain->ch_len; i++) {
  tic = chain->ch_ccw + i;

  if (!ccw_is_tic(tic))
   continue;


  if (tic_target_chain_exists(tic, cp))
   continue;


  ret = ccwchain_handle_ccw(tic->cda, cp);
  if (ret)
   return ret;
 }

 return 0;
}

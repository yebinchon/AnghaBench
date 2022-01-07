
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_program {int dummy; } ;
struct ccwchain {struct ccw1* ch_ccw; } ;
struct ccw1 {int dummy; } ;


 scalar_t__ ccw_is_tic (struct ccw1*) ;
 int ccwchain_fetch_direct (struct ccwchain*,int,struct channel_program*) ;
 int ccwchain_fetch_tic (struct ccwchain*,int,struct channel_program*) ;

__attribute__((used)) static int ccwchain_fetch_one(struct ccwchain *chain,
         int idx,
         struct channel_program *cp)
{
 struct ccw1 *ccw = chain->ch_ccw + idx;

 if (ccw_is_tic(ccw))
  return ccwchain_fetch_tic(chain, idx, cp);

 return ccwchain_fetch_direct(chain, idx, cp);
}

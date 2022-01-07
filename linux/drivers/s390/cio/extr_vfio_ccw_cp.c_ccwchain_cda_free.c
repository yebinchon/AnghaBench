
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ccwchain {struct ccw1* ch_ccw; } ;
struct ccw1 {scalar_t__ cda; } ;


 scalar_t__ ccw_is_tic (struct ccw1*) ;
 int kfree (void*) ;

__attribute__((used)) static void ccwchain_cda_free(struct ccwchain *chain, int idx)
{
 struct ccw1 *ccw = chain->ch_ccw + idx;

 if (ccw_is_tic(ccw))
  return;

 kfree((void *)(u64)ccw->cda);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {scalar_t__ i2k; int c64; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct channel_program {TYPE_2__ orb; struct ccw1* guest_cp; } ;
struct ccw1 {int dummy; } ;


 int CCWCHAIN_LEN_MAX ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int ccw_is_chain (struct ccw1*) ;
 scalar_t__ ccw_is_idal (struct ccw1*) ;
 int is_tic_within_range (struct ccw1*,int ,int) ;

__attribute__((used)) static int ccwchain_calc_length(u64 iova, struct channel_program *cp)
{
 struct ccw1 *ccw = cp->guest_cp;
 int cnt = 0;

 do {
  cnt++;






  if ((!cp->orb.cmd.c64 || cp->orb.cmd.i2k) && ccw_is_idal(ccw))
   return -EOPNOTSUPP;
  if (!ccw_is_chain(ccw) && !is_tic_within_range(ccw, iova, cnt))
   break;

  ccw++;
 } while (cnt < CCWCHAIN_LEN_MAX + 1);

 if (cnt == CCWCHAIN_LEN_MAX + 1)
  cnt = -EINVAL;

 return cnt;
}

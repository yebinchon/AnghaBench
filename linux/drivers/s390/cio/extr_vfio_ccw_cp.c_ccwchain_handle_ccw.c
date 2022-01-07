
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int fmt; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct channel_program {int guest_cp; TYPE_2__ orb; int mdev; } ;
struct ccwchain {int ch_ccw; int ch_iova; } ;
struct ccw1 {int dummy; } ;


 int CCWCHAIN_LEN_MAX ;
 int ENOMEM ;
 struct ccwchain* ccwchain_alloc (struct channel_program*,int) ;
 int ccwchain_calc_length (int ,struct channel_program*) ;
 int ccwchain_free (struct ccwchain*) ;
 int ccwchain_loop_tic (struct ccwchain*,struct channel_program*) ;
 int convert_ccw0_to_ccw1 (int ,int) ;
 int copy_from_iova (int ,int ,int ,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int ccwchain_handle_ccw(u32 cda, struct channel_program *cp)
{
 struct ccwchain *chain;
 int len, ret;


 len = copy_from_iova(cp->mdev, cp->guest_cp, cda,
        CCWCHAIN_LEN_MAX * sizeof(struct ccw1));
 if (len)
  return len;


 if (!cp->orb.cmd.fmt)
  convert_ccw0_to_ccw1(cp->guest_cp, CCWCHAIN_LEN_MAX);


 len = ccwchain_calc_length(cda, cp);
 if (len < 0)
  return len;


 chain = ccwchain_alloc(cp, len);
 if (!chain)
  return -ENOMEM;
 chain->ch_iova = cda;


 memcpy(chain->ch_ccw, cp->guest_cp, len * sizeof(struct ccw1));


 ret = ccwchain_loop_tic(chain, cp);

 if (ret)
  ccwchain_free(chain);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cardstate {scalar_t__ retry_count; int channels; TYPE_2__* bcs; int dev; } ;
struct TYPE_3__ {scalar_t__ cid; int pending_commands; } ;
struct TYPE_4__ {TYPE_1__ at_state; } ;


 int EBUSY ;
 int EFAULT ;
 int MS_INIT ;
 int PC_CID ;
 int dev_warn (int ,char*) ;
 int schedule_init (struct cardstate*,int ) ;

__attribute__((used)) static int reinit_and_retry(struct cardstate *cs, int channel)
{
 int i;

 if (--cs->retry_count <= 0)
  return -EFAULT;

 for (i = 0; i < cs->channels; ++i)
  if (cs->bcs[i].at_state.cid > 0)
   return -EBUSY;

 if (channel < 0)
  dev_warn(cs->dev,
    "Could not enter cid mode. Reinit device and try again.\n");
 else {
  dev_warn(cs->dev,
    "Could not get a call id. Reinit device and try again.\n");
  cs->bcs[channel].at_state.pending_commands |= PC_CID;
 }
 schedule_init(cs, MS_INIT);
 return 0;
}

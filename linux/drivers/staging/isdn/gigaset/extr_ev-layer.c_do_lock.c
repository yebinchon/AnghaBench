
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pending_commands; } ;
struct cardstate {int mstate; int channels; int mode; TYPE_2__* bcs; TYPE_3__ at_state; int temp_at_states; int cur_at_seq; } ;
struct TYPE_4__ {int pending_commands; } ;
struct TYPE_5__ {TYPE_1__ at_state; } ;


 int EBUSY ;



 int M_UNKNOWN ;
 int gigaset_get_channels (struct cardstate*) ;
 int list_empty (int *) ;

__attribute__((used)) static int do_lock(struct cardstate *cs)
{
 int mode;
 int i;

 switch (cs->mstate) {
 case 128:
 case 129:
  if (cs->cur_at_seq || !list_empty(&cs->temp_at_states) ||
      cs->at_state.pending_commands)
   return -EBUSY;

  for (i = 0; i < cs->channels; ++i)
   if (cs->bcs[i].at_state.pending_commands)
    return -EBUSY;

  if (gigaset_get_channels(cs) < 0)
   return -EBUSY;

  break;
 case 130:
  break;
 default:
  return -EBUSY;
 }

 mode = cs->mode;
 cs->mstate = 130;
 cs->mode = M_UNKNOWN;

 return mode;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * min; } ;
struct TYPE_4__ {TYPE_1__ io_latency; } ;
struct bfa_itnim_s {TYPE_2__ ioprofile; TYPE_2__ stats; } ;


 int BFA_IOBUCKET_MAX ;
 int memset (TYPE_2__*,int ,int) ;

void
bfa_itnim_clear_stats(struct bfa_itnim_s *itnim)
{
 int j;

 if (!itnim)
  return;

 memset(&itnim->stats, 0, sizeof(itnim->stats));
 memset(&itnim->ioprofile, 0, sizeof(itnim->ioprofile));
 for (j = 0; j < BFA_IOBUCKET_MAX; j++)
  itnim->ioprofile.io_latency.min[j] = ~0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bfa_fcs_itnim_s {TYPE_1__* rport; } ;
struct TYPE_2__ {int maxfrsize; } ;



__attribute__((used)) static inline u32
bfa_fcs_itnim_get_maxfrsize(struct bfa_fcs_itnim_s *itnim)
{
 return itnim->rport->maxfrsize;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wwn_t ;
struct bfa_fcs_itnim_s {TYPE_1__* rport; } ;
struct TYPE_2__ {int nwwn; } ;



__attribute__((used)) static inline wwn_t
bfa_fcs_itnim_get_nwwn(struct bfa_fcs_itnim_s *itnim)
{
 return itnim->rport->nwwn;
}

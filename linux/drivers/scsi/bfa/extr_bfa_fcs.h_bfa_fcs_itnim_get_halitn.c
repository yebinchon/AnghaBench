
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_s {int dummy; } ;
struct bfa_fcs_itnim_s {struct bfa_itnim_s* bfa_itnim; } ;



__attribute__((used)) static inline struct bfa_itnim_s *
bfa_fcs_itnim_get_halitn(struct bfa_fcs_itnim_s *itnim)
{
 return itnim->bfa_itnim;
}

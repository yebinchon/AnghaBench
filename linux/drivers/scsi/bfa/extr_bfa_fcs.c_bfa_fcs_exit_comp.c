
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int comp; } ;
struct bfa_fcs_s {struct bfad_s* bfad; } ;


 int complete (int *) ;

__attribute__((used)) static void
bfa_fcs_exit_comp(void *fcs_cbarg)
{
 struct bfa_fcs_s *fcs = fcs_cbarg;
 struct bfad_s *bfad = fcs->bfad;

 complete(&bfad->comp);
}

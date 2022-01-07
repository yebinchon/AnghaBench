
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int ioc; } ;


 int bfa_ioc_detach (int *) ;

void
bfa_detach(struct bfa_s *bfa)
{
 bfa_ioc_detach(&bfa->ioc);
}

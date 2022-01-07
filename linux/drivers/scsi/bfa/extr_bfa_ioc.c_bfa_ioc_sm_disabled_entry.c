
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dummy; } ;


 int bfa_ioc_disable_comp (struct bfa_ioc_s*) ;

__attribute__((used)) static void
bfa_ioc_sm_disabled_entry(struct bfa_ioc_s *ioc)
{
 bfa_ioc_disable_comp(ioc);
}

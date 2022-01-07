
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dummy; } ;


 int bfa_ioc_hw_sem_get (struct bfa_ioc_s*) ;

__attribute__((used)) static void
bfa_iocpf_sem_timeout(void *ioc_arg)
{
 struct bfa_ioc_s *ioc = (struct bfa_ioc_s *) ioc_arg;

 bfa_ioc_hw_sem_get(ioc);
}

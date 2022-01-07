
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deassert_pshold (int *,int ,int *) ;
 int restart_nb ;

__attribute__((used)) static void do_msm_poweroff(void)
{
 deassert_pshold(&restart_nb, 0, ((void*)0));
}

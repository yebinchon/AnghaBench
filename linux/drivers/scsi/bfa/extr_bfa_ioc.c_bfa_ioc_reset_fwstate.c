
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dummy; } ;


 int BFI_IOC_UNINIT ;
 int bfa_ioc_set_alt_ioc_fwstate (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_set_cur_ioc_fwstate (struct bfa_ioc_s*,int ) ;

void
bfa_ioc_reset_fwstate(struct bfa_ioc_s *ioc)
{
 bfa_ioc_set_cur_ioc_fwstate(ioc, BFI_IOC_UNINIT);
 bfa_ioc_set_alt_ioc_fwstate(ioc, BFI_IOC_UNINIT);
}

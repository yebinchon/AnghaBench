
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_s {int ioc; } ;


 int BFA_LPS_MAX_VPORTS_SUPP_CB ;
 int BFA_LPS_MAX_VPORTS_SUPP_CT ;
 scalar_t__ BFA_PCI_DEVICE_ID_CT ;
 scalar_t__ bfa_ioc_devid (int *) ;

u32
bfa_lps_get_max_vport(struct bfa_s *bfa)
{
 if (bfa_ioc_devid(&bfa->ioc) == BFA_PCI_DEVICE_ID_CT)
  return BFA_LPS_MAX_VPORTS_SUPP_CT;
 else
  return BFA_LPS_MAX_VPORTS_SUPP_CB;
}

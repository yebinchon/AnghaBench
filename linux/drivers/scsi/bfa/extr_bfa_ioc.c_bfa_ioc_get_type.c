
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_s {scalar_t__ clscode; TYPE_1__* attr; } ;
typedef enum bfa_ioc_type_e { ____Placeholder_bfa_ioc_type_e } bfa_ioc_type_e ;
struct TYPE_2__ {scalar_t__ port_mode; } ;


 int BFA_IOC_TYPE_FC ;
 int BFA_IOC_TYPE_FCoE ;
 int BFA_IOC_TYPE_LL ;
 scalar_t__ BFI_PCIFN_CLASS_ETH ;
 scalar_t__ BFI_PCIFN_CLASS_FC ;
 scalar_t__ BFI_PORT_MODE_FC ;
 int WARN_ON (int) ;

enum bfa_ioc_type_e
bfa_ioc_get_type(struct bfa_ioc_s *ioc)
{
 if (ioc->clscode == BFI_PCIFN_CLASS_ETH)
  return BFA_IOC_TYPE_LL;

 WARN_ON(ioc->clscode != BFI_PCIFN_CLASS_FC);

 return (ioc->attr->port_mode == BFI_PORT_MODE_FC)
  ? BFA_IOC_TYPE_FC : BFA_IOC_TYPE_FCoE;
}

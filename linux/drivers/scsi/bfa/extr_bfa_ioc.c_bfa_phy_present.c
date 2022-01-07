
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_phy_s {TYPE_2__* ioc; } ;
typedef int bfa_boolean_t ;
struct TYPE_4__ {TYPE_1__* attr; } ;
struct TYPE_3__ {scalar_t__ card_type; } ;


 scalar_t__ BFA_MFG_TYPE_LIGHTNING ;

__attribute__((used)) static bfa_boolean_t
bfa_phy_present(struct bfa_phy_s *phy)
{
 return (phy->ioc->attr->card_type == BFA_MFG_TYPE_LIGHTNING);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int dummy; } ;


 scalar_t__ pciehp_card_present (struct controller*) ;
 scalar_t__ pciehp_check_link_active (struct controller*) ;

bool pciehp_card_present_or_link_active(struct controller *ctrl)
{
 return pciehp_card_present(ctrl) || pciehp_check_link_active(ctrl);
}

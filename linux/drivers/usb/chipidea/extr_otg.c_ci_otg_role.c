
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int dummy; } ;
typedef enum ci_role { ____Placeholder_ci_role } ci_role ;


 int CI_ROLE_GADGET ;
 int CI_ROLE_HOST ;
 int OTGSC_ID ;
 scalar_t__ hw_read_otgsc (struct ci_hdrc*,int ) ;

enum ci_role ci_otg_role(struct ci_hdrc *ci)
{
 enum ci_role role = hw_read_otgsc(ci, OTGSC_ID)
  ? CI_ROLE_GADGET
  : CI_ROLE_HOST;

 return role;
}

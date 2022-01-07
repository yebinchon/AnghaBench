
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {scalar_t__* roles; scalar_t__ is_otg; } ;


 size_t CI_ROLE_GADGET ;
 int ci_hdrc_gadget_destroy (struct ci_hdrc*) ;
 int ci_hdrc_host_destroy (struct ci_hdrc*) ;
 int ci_hdrc_otg_destroy (struct ci_hdrc*) ;

__attribute__((used)) static inline void ci_role_destroy(struct ci_hdrc *ci)
{
 ci_hdrc_gadget_destroy(ci);
 ci_hdrc_host_destroy(ci);
 if (ci->is_otg && ci->roles[CI_ROLE_GADGET])
  ci_hdrc_otg_destroy(ci);
}

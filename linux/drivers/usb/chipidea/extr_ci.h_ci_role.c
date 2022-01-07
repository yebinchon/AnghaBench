
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_role_driver {int dummy; } ;
struct ci_hdrc {size_t role; struct ci_role_driver** roles; } ;


 int BUG_ON (int) ;
 size_t CI_ROLE_END ;

__attribute__((used)) static inline struct ci_role_driver *ci_role(struct ci_hdrc *ci)
{
 BUG_ON(ci->role >= CI_ROLE_END || !ci->roles[ci->role]);
 return ci->roles[ci->role];
}

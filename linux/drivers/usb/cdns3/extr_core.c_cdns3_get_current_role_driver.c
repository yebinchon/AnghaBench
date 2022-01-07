
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_role_driver {int dummy; } ;
struct cdns3 {size_t role; struct cdns3_role_driver** roles; } ;


 int WARN_ON (int) ;

__attribute__((used)) static inline
struct cdns3_role_driver *cdns3_get_current_role_driver(struct cdns3 *cdns)
{
 WARN_ON(!cdns->roles[cdns->role]);
 return cdns->roles[cdns->role];
}

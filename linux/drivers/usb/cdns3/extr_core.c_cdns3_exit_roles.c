
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3 {int dummy; } ;


 int cdns3_drd_exit (struct cdns3*) ;
 int cdns3_role_stop (struct cdns3*) ;

__attribute__((used)) static void cdns3_exit_roles(struct cdns3 *cdns)
{
 cdns3_role_stop(cdns);
 cdns3_drd_exit(cdns);
}

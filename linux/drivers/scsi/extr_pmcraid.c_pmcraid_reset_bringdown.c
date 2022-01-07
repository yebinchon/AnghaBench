
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int dummy; } ;


 int IOA_STATE_UNKNOWN ;
 int SHUTDOWN_NORMAL ;
 int pmcraid_reset_reload (struct pmcraid_instance*,int ,int ) ;

__attribute__((used)) static int pmcraid_reset_bringdown(struct pmcraid_instance *pinstance)
{
 return pmcraid_reset_reload(pinstance,
        SHUTDOWN_NORMAL,
        IOA_STATE_UNKNOWN);
}

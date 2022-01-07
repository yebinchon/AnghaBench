
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int dummy; } ;


 int IOA_STATE_OPERATIONAL ;
 int PMC_DEVICE_EVENT_RESET_START ;
 int SHUTDOWN_NONE ;
 int pmcraid_notify_ioastate (struct pmcraid_instance*,int ) ;
 int pmcraid_reset_reload (struct pmcraid_instance*,int ,int ) ;

__attribute__((used)) static int pmcraid_reset_bringup(struct pmcraid_instance *pinstance)
{
 pmcraid_notify_ioastate(pinstance, PMC_DEVICE_EVENT_RESET_START);

 return pmcraid_reset_reload(pinstance,
        SHUTDOWN_NONE,
        IOA_STATE_OPERATIONAL);
}

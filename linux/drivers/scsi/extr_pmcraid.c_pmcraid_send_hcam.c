
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmcraid_instance {int dummy; } ;
struct pmcraid_cmd {int dummy; } ;


 struct pmcraid_cmd* pmcraid_init_hcam (struct pmcraid_instance*,int ) ;
 int pmcraid_send_hcam_cmd (struct pmcraid_cmd*) ;

__attribute__((used)) static void pmcraid_send_hcam(struct pmcraid_instance *pinstance, u8 type)
{
 struct pmcraid_cmd *cmd = pmcraid_init_hcam(pinstance, type);
 pmcraid_send_hcam_cmd(cmd);
}

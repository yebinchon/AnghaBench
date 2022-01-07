
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {int dummy; } ;
struct megasas_cmd_fusion {int cmd_completed; int r1_alt_dev_handle; int io_request; int * scmd; } ;


 int MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE ;
 int MR_DEVHANDLE_INVALID ;
 int memset (int ,int ,int ) ;

inline void megasas_return_cmd_fusion(struct megasas_instance *instance,
 struct megasas_cmd_fusion *cmd)
{
 cmd->scmd = ((void*)0);
 memset(cmd->io_request, 0, MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE);
 cmd->r1_alt_dev_handle = MR_DEVHANDLE_INVALID;
 cmd->cmd_completed = 0;
}

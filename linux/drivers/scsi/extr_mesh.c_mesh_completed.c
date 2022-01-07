
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct mesh_state {int dummy; } ;


 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void mesh_completed(struct mesh_state *ms, struct scsi_cmnd *cmd)
{
 (*cmd->scsi_done)(cmd);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int can_queue; } ;
struct iscsi_session {int scsi_cmds_max; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;


 struct iscsi_cls_session* starget_to_session (struct scsi_target*) ;

int iscsi_target_alloc(struct scsi_target *starget)
{
 struct iscsi_cls_session *cls_session = starget_to_session(starget);
 struct iscsi_session *session = cls_session->dd_data;

 starget->can_queue = session->scsi_cmds_max;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int dummy; } ;
struct iscsi_session {int dummy; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct Scsi_Host {int dummy; } ;


 struct qedi_ctx* iscsi_host_priv (struct Scsi_Host*) ;
 int iscsi_session_teardown (struct iscsi_cls_session*) ;
 struct Scsi_Host* iscsi_session_to_shost (struct iscsi_cls_session*) ;
 int qedi_destroy_cmd_pool (struct qedi_ctx*,struct iscsi_session*) ;

__attribute__((used)) static void qedi_session_destroy(struct iscsi_cls_session *cls_session)
{
 struct iscsi_session *session = cls_session->dd_data;
 struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
 struct qedi_ctx *qedi = iscsi_host_priv(shost);

 qedi_destroy_cmd_pool(qedi, session);
 iscsi_session_teardown(cls_session);
}

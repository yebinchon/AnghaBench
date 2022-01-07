
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int dummy; } ;
struct qedi_conn {int dummy; } ;
struct iscsi_conn {struct qedi_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;


 int iscsi_conn_teardown (struct iscsi_cls_conn*) ;
 int iscsi_conn_to_session (struct iscsi_cls_conn*) ;
 struct qedi_ctx* iscsi_host_priv (struct Scsi_Host*) ;
 struct Scsi_Host* iscsi_session_to_shost (int ) ;
 int qedi_conn_free_login_resources (struct qedi_ctx*,struct qedi_conn*) ;

__attribute__((used)) static void qedi_conn_destroy(struct iscsi_cls_conn *cls_conn)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct qedi_conn *qedi_conn = conn->dd_data;
 struct Scsi_Host *shost;
 struct qedi_ctx *qedi;

 shost = iscsi_session_to_shost(iscsi_conn_to_session(cls_conn));
 qedi = iscsi_host_priv(shost);

 qedi_conn_free_login_resources(qedi, qedi_conn);
 iscsi_conn_teardown(cls_conn);
}

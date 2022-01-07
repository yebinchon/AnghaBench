
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iscsi_conn {struct bnx2i_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct bnx2i_hba {int dummy; } ;
struct bnx2i_conn {int cmd_cleanup_cmpl; int * ep; int work_cnt; struct bnx2i_hba* hba; struct iscsi_cls_conn* cls_conn; } ;
struct Scsi_Host {int dummy; } ;


 int KERN_ALERT ;
 int atomic_set (int *,int ) ;
 scalar_t__ bnx2i_conn_alloc_login_resources (struct bnx2i_hba*,struct bnx2i_conn*) ;
 int init_completion (int *) ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*) ;
 struct iscsi_cls_conn* iscsi_conn_setup (struct iscsi_cls_session*,int,int ) ;
 int iscsi_conn_teardown (struct iscsi_cls_conn*) ;
 struct bnx2i_hba* iscsi_host_priv (struct Scsi_Host*) ;
 struct Scsi_Host* iscsi_session_to_shost (struct iscsi_cls_session*) ;

__attribute__((used)) static struct iscsi_cls_conn *
bnx2i_conn_create(struct iscsi_cls_session *cls_session, uint32_t cid)
{
 struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
 struct bnx2i_hba *hba = iscsi_host_priv(shost);
 struct bnx2i_conn *bnx2i_conn;
 struct iscsi_cls_conn *cls_conn;
 struct iscsi_conn *conn;

 cls_conn = iscsi_conn_setup(cls_session, sizeof(*bnx2i_conn),
        cid);
 if (!cls_conn)
  return ((void*)0);
 conn = cls_conn->dd_data;

 bnx2i_conn = conn->dd_data;
 bnx2i_conn->cls_conn = cls_conn;
 bnx2i_conn->hba = hba;

 atomic_set(&bnx2i_conn->work_cnt, 0);


 bnx2i_conn->ep = ((void*)0);
 init_completion(&bnx2i_conn->cmd_cleanup_cmpl);

 if (bnx2i_conn_alloc_login_resources(hba, bnx2i_conn)) {
  iscsi_conn_printk(KERN_ALERT, conn,
      "conn_new: login resc alloc failed!!\n");
  goto free_conn;
 }

 return cls_conn;

free_conn:
 iscsi_conn_teardown(cls_conn);
 return ((void*)0);
}

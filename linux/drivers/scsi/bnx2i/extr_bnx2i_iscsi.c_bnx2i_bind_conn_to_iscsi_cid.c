
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {struct bnx2i_conn** conn_cid_tbl; } ;
struct bnx2i_hba {TYPE_2__ cid_que; } ;
struct bnx2i_conn {TYPE_1__* cls_conn; } ;
struct TYPE_3__ {int dd_data; } ;


 int EBUSY ;
 int KERN_ALERT ;
 int iscsi_conn_printk (int ,int ,char*,size_t) ;

__attribute__((used)) static int bnx2i_bind_conn_to_iscsi_cid(struct bnx2i_hba *hba,
     struct bnx2i_conn *bnx2i_conn,
     u32 iscsi_cid)
{
 if (hba && hba->cid_que.conn_cid_tbl[iscsi_cid]) {
  iscsi_conn_printk(KERN_ALERT, bnx2i_conn->cls_conn->dd_data,
     "conn bind - entry #%d not free\n", iscsi_cid);
  return -EBUSY;
 }

 hba->cid_que.conn_cid_tbl[iscsi_cid] = bnx2i_conn;
 return 0;
}

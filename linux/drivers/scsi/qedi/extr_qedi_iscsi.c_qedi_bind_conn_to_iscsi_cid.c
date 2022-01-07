
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {struct qedi_conn** conn_cid_tbl; } ;
struct qedi_ctx {TYPE_2__ cid_que; } ;
struct qedi_conn {size_t iscsi_conn_id; TYPE_1__* cls_conn; } ;
struct TYPE_3__ {int dd_data; } ;


 int EBUSY ;
 int KERN_ALERT ;
 int iscsi_conn_printk (int ,int ,char*,size_t) ;

__attribute__((used)) static int qedi_bind_conn_to_iscsi_cid(struct qedi_ctx *qedi,
           struct qedi_conn *qedi_conn)
{
 u32 iscsi_cid = qedi_conn->iscsi_conn_id;

 if (qedi->cid_que.conn_cid_tbl[iscsi_cid]) {
  iscsi_conn_printk(KERN_ALERT, qedi_conn->cls_conn->dd_data,
      "conn bind - entry #%d not free\n",
      iscsi_cid);
  return -EBUSY;
 }

 qedi->cid_que.conn_cid_tbl[iscsi_cid] = qedi_conn;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_task {int dummy; } ;
struct iscsi_reject {int reason; int dlength; int statsn; } ;
struct iscsi_nopin {int dummy; } ;
struct iscsi_hdr {int opcode; int itt; } ;
struct iscsi_conn {TYPE_1__* session; scalar_t__ exp_statsn; } ;
struct TYPE_2__ {int back_lock; int frwd_lock; } ;


 int ISCSI_ERR_BAD_ITT ;
 int ISCSI_ERR_PROTO ;
 int ISCSI_OPCODE_MASK ;
 int ISCSI_OP_NOOP_OUT ;


 int ISCSI_RESERVED_TAG ;
 int KERN_ERR ;
 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*,...) ;
 struct iscsi_task* iscsi_itt_to_task (struct iscsi_conn*,int ) ;
 int iscsi_nop_out_rsp (struct iscsi_task*,struct iscsi_nopin*,int *,int ) ;
 int iscsi_send_nopout (struct iscsi_conn*,struct iscsi_nopin*) ;
 int memcpy (struct iscsi_hdr*,char*,int) ;
 int ntoh24 (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iscsi_handle_reject(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
          char *data, int datalen)
{
 struct iscsi_reject *reject = (struct iscsi_reject *)hdr;
 struct iscsi_hdr rejected_pdu;
 int opcode, rc = 0;

 conn->exp_statsn = be32_to_cpu(reject->statsn) + 1;

 if (ntoh24(reject->dlength) > datalen ||
     ntoh24(reject->dlength) < sizeof(struct iscsi_hdr)) {
  iscsi_conn_printk(KERN_ERR, conn, "Cannot handle rejected "
      "pdu. Invalid data length (pdu dlength "
      "%u, datalen %d\n", ntoh24(reject->dlength),
      datalen);
  return ISCSI_ERR_PROTO;
 }
 memcpy(&rejected_pdu, data, sizeof(struct iscsi_hdr));
 opcode = rejected_pdu.opcode & ISCSI_OPCODE_MASK;

 switch (reject->reason) {
 case 129:
  iscsi_conn_printk(KERN_ERR, conn,
      "pdu (op 0x%x itt 0x%x) rejected "
      "due to DataDigest error.\n",
      opcode, rejected_pdu.itt);
  break;
 case 128:
  iscsi_conn_printk(KERN_ERR, conn,
      "pdu (op 0x%x itt 0x%x) rejected. Too many "
      "immediate commands.\n",
      opcode, rejected_pdu.itt);
  if (opcode != ISCSI_OP_NOOP_OUT)
   return 0;

  if (rejected_pdu.itt == cpu_to_be32(ISCSI_RESERVED_TAG)) {





   spin_unlock(&conn->session->back_lock);
   spin_lock(&conn->session->frwd_lock);
   iscsi_send_nopout(conn,
       (struct iscsi_nopin*)&rejected_pdu);
   spin_unlock(&conn->session->frwd_lock);
   spin_lock(&conn->session->back_lock);
  } else {
   struct iscsi_task *task;




   task = iscsi_itt_to_task(conn, rejected_pdu.itt);
   if (!task) {
    iscsi_conn_printk(KERN_ERR, conn,
       "Invalid pdu reject. Could "
       "not lookup rejected task.\n");
    rc = ISCSI_ERR_BAD_ITT;
   } else
    rc = iscsi_nop_out_rsp(task,
     (struct iscsi_nopin*)&rejected_pdu,
     ((void*)0), 0);
  }
  break;
 default:
  iscsi_conn_printk(KERN_ERR, conn,
      "pdu (op 0x%x itt 0x%x) rejected. Reason "
      "code 0x%x\n", rejected_pdu.opcode,
      rejected_pdu.itt, reject->reason);
  break;
 }
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {int dummy; } ;
struct iscsi_nopout {int opcode; void* ttt; void* itt; int lun; int flags; } ;
struct iscsi_nopin {void* ttt; int lun; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {int last_ping; struct iscsi_task* ping_task; } ;


 int EINVAL ;
 int EIO ;
 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_OP_IMMEDIATE ;
 int ISCSI_OP_NOOP_OUT ;
 int KERN_ERR ;
 void* RESERVED_ITT ;
 struct iscsi_task* __iscsi_conn_send_pdu (struct iscsi_conn*,struct iscsi_hdr*,int *,int ) ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*) ;
 int jiffies ;
 int memset (struct iscsi_nopout*,int ,int) ;

__attribute__((used)) static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
{
        struct iscsi_nopout hdr;
 struct iscsi_task *task;

 if (!rhdr && conn->ping_task)
  return -EINVAL;

 memset(&hdr, 0, sizeof(struct iscsi_nopout));
 hdr.opcode = ISCSI_OP_NOOP_OUT | ISCSI_OP_IMMEDIATE;
 hdr.flags = ISCSI_FLAG_CMD_FINAL;

 if (rhdr) {
  hdr.lun = rhdr->lun;
  hdr.ttt = rhdr->ttt;
  hdr.itt = RESERVED_ITT;
 } else
  hdr.ttt = RESERVED_ITT;

 task = __iscsi_conn_send_pdu(conn, (struct iscsi_hdr *)&hdr, ((void*)0), 0);
 if (!task) {
  iscsi_conn_printk(KERN_ERR, conn, "Could not send nopout\n");
  return -EIO;
 } else if (!rhdr) {

  conn->ping_task = task;
  conn->last_ping = jiffies;
 }

 return 0;
}

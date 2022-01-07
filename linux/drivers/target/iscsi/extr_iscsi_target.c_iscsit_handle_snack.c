
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_snack {int flags; int runlength; int begrun; int ttt; int itt; int exp_statsn; } ;
struct iscsi_conn {TYPE_2__* sess; int cid; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {int ErrorRecoveryLevel; } ;


 int ISCSI_FLAG_CMD_FINAL ;

 int ISCSI_FLAG_SNACK_TYPE_MASK ;


 int ISCSI_REASON_PROTOCOL_ERROR ;
 int be32_to_cpu (int ) ;
 int iscsit_add_reject (struct iscsi_conn*,int ,unsigned char*) ;
 int iscsit_handle_data_ack (struct iscsi_conn*,int ,int ,int ) ;
 int iscsit_handle_recovery_datain_or_r2t (struct iscsi_conn*,unsigned char*,int ,int ,int ,int ) ;
 int iscsit_handle_status_snack (struct iscsi_conn*,int ,int ,int ,int ) ;
 int pr_debug (char*,int ,int ,int,int ,int ,int ) ;
 int pr_err (char*,...) ;

int iscsit_handle_snack(
 struct iscsi_conn *conn,
 unsigned char *buf)
{
 struct iscsi_snack *hdr;

 hdr = (struct iscsi_snack *) buf;
 hdr->flags &= ~ISCSI_FLAG_CMD_FINAL;

 pr_debug("Got ISCSI_INIT_SNACK, ITT: 0x%08x, ExpStatSN:"
  " 0x%08x, Type: 0x%02x, BegRun: 0x%08x, RunLength: 0x%08x,"
  " CID: %hu\n", hdr->itt, hdr->exp_statsn, hdr->flags,
   hdr->begrun, hdr->runlength, conn->cid);

 if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
  pr_err("Initiator sent SNACK request while in"
   " ErrorRecoveryLevel=0.\n");
  return iscsit_add_reject(conn, ISCSI_REASON_PROTOCOL_ERROR,
      buf);
 }




 switch (hdr->flags & ISCSI_FLAG_SNACK_TYPE_MASK) {
 case 0:
  return iscsit_handle_recovery_datain_or_r2t(conn, buf,
   hdr->itt,
   be32_to_cpu(hdr->ttt),
   be32_to_cpu(hdr->begrun),
   be32_to_cpu(hdr->runlength));
 case 128:
  return iscsit_handle_status_snack(conn, hdr->itt,
   be32_to_cpu(hdr->ttt),
   be32_to_cpu(hdr->begrun), be32_to_cpu(hdr->runlength));
 case 130:
  return iscsit_handle_data_ack(conn, be32_to_cpu(hdr->ttt),
   be32_to_cpu(hdr->begrun),
   be32_to_cpu(hdr->runlength));
 case 129:

  pr_err("R-Data SNACK Not Supported.\n");
  return iscsit_add_reject(conn, ISCSI_REASON_PROTOCOL_ERROR,
      buf);
 default:
  pr_err("Unknown SNACK type 0x%02x, protocol"
   " error.\n", hdr->flags & 0x0f);
  return iscsit_add_reject(conn, ISCSI_REASON_PROTOCOL_ERROR,
      buf);
 }

 return 0;
}

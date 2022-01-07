
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_data {int itt; int dlength; } ;
struct iscsi_conn {TYPE_1__* conn_ops; } ;
struct iscsi_cmd {int dummy; } ;
struct TYPE_2__ {int MaxXmitDataSegmentLength; } ;


 int ISCSI_REASON_PROTOCOL_ERROR ;
 int __iscsit_check_dataout_hdr (struct iscsi_conn*,void*,struct iscsi_cmd*,int ,int*) ;
 int iscsit_add_reject (struct iscsi_conn*,int ,void*) ;
 struct iscsi_cmd* iscsit_find_cmd_from_itt_or_dump (struct iscsi_conn*,int ,int ) ;
 int ntoh24 (int ) ;
 int pr_err_ratelimited (char*,int ,int ) ;
 int pr_warn_ratelimited (char*) ;

int
iscsit_check_dataout_hdr(struct iscsi_conn *conn, void *buf,
    struct iscsi_cmd **out_cmd)
{
 struct iscsi_data *hdr = buf;
 struct iscsi_cmd *cmd;
 u32 payload_length = ntoh24(hdr->dlength);
 int rc;
 bool success = 0;

 if (!payload_length) {
  pr_warn_ratelimited("DataOUT payload is ZERO, ignoring.\n");
  return 0;
 }

 if (payload_length > conn->conn_ops->MaxXmitDataSegmentLength) {
  pr_err_ratelimited("DataSegmentLength: %u is greater than"
   " MaxXmitDataSegmentLength: %u\n", payload_length,
   conn->conn_ops->MaxXmitDataSegmentLength);
  return iscsit_add_reject(conn, ISCSI_REASON_PROTOCOL_ERROR, buf);
 }

 cmd = iscsit_find_cmd_from_itt_or_dump(conn, hdr->itt, payload_length);
 if (!cmd)
  return 0;

 rc = __iscsit_check_dataout_hdr(conn, buf, cmd, payload_length, &success);

 if (success)
  *out_cmd = cmd;

 return rc;
}

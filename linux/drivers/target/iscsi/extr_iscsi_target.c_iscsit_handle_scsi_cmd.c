
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_scsi_req {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int immediate_data; } ;


 int ISCSI_REASON_BOOKMARK_NO_RESOURCES ;
 scalar_t__ iscsit_allocate_iovecs (struct iscsi_cmd*) ;
 int iscsit_get_immediate_data (struct iscsi_cmd*,struct iscsi_scsi_req*,int) ;
 int iscsit_process_scsi_cmd (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_scsi_req*) ;
 int iscsit_reject_cmd (struct iscsi_cmd*,int ,unsigned char*) ;
 int iscsit_setup_scsi_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ;

__attribute__((used)) static int
iscsit_handle_scsi_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
      unsigned char *buf)
{
 struct iscsi_scsi_req *hdr = (struct iscsi_scsi_req *)buf;
 int rc, immed_data;
 bool dump_payload = 0;

 rc = iscsit_setup_scsi_cmd(conn, cmd, buf);
 if (rc < 0)
  return 0;




 if (iscsit_allocate_iovecs(cmd) < 0) {
  return iscsit_reject_cmd(cmd,
    ISCSI_REASON_BOOKMARK_NO_RESOURCES, buf);
 }
 immed_data = cmd->immediate_data;

 rc = iscsit_process_scsi_cmd(conn, cmd, hdr);
 if (rc < 0)
  return rc;
 else if (rc > 0)
  dump_payload = 1;

 if (!immed_data)
  return 0;

 return iscsit_get_immediate_data(cmd, hdr, dump_payload);
}

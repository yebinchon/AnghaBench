
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_scsi_req {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct TYPE_2__ {scalar_t__ data_length; int se_cmd_flags; } ;
struct iscsi_cmd {TYPE_1__ se_cmd; } ;
struct cxgbit_sock {int skb; struct iscsi_conn* conn; } ;
struct cxgbit_lro_pdu_cb {scalar_t__ dlen; int nr_dfrags; scalar_t__ hdr; } ;


 int SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC ;
 int cxgbit_get_immediate_data (struct iscsi_cmd*,struct iscsi_scsi_req*,int) ;
 struct cxgbit_lro_pdu_cb* cxgbit_rx_pdu_cb (int ) ;
 int iscsit_process_scsi_cmd (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_scsi_req*) ;
 int iscsit_setup_scsi_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ;

__attribute__((used)) static int
cxgbit_handle_scsi_cmd(struct cxgbit_sock *csk, struct iscsi_cmd *cmd)
{
 struct iscsi_conn *conn = csk->conn;
 struct cxgbit_lro_pdu_cb *pdu_cb = cxgbit_rx_pdu_cb(csk->skb);
 struct iscsi_scsi_req *hdr = (struct iscsi_scsi_req *)pdu_cb->hdr;
 int rc;
 bool dump_payload = 0;

 rc = iscsit_setup_scsi_cmd(conn, cmd, (unsigned char *)hdr);
 if (rc < 0)
  return rc;

 if (pdu_cb->dlen && (pdu_cb->dlen == cmd->se_cmd.data_length) &&
     (pdu_cb->nr_dfrags == 1))
  cmd->se_cmd.se_cmd_flags |= SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC;

 rc = iscsit_process_scsi_cmd(conn, cmd, hdr);
 if (rc < 0)
  return 0;
 else if (rc > 0)
  dump_payload = 1;

 if (!pdu_cb->dlen)
  return 0;

 return cxgbit_get_immediate_data(cmd, hdr, dump_payload);
}

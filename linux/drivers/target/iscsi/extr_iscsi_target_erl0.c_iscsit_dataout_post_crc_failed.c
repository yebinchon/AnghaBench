
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_pdu {int status; } ;
struct iscsi_data {int offset; int dlength; } ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {struct iscsi_pdu* pdu_ptr; struct iscsi_conn* conn; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {scalar_t__ DataPDUInOrder; } ;


 int DATAOUT_CANNOT_RECOVER ;



 int be32_to_cpu (int ) ;
 int iscsit_recover_dataout_sequence (struct iscsi_cmd*,int ,int ) ;
 int ntoh24 (int ) ;

__attribute__((used)) static int iscsit_dataout_post_crc_failed(
 struct iscsi_cmd *cmd,
 unsigned char *buf)
{
 struct iscsi_conn *conn = cmd->conn;
 struct iscsi_pdu *pdu;
 struct iscsi_data *hdr = (struct iscsi_data *) buf;
 u32 payload_length = ntoh24(hdr->dlength);

 if (conn->sess->sess_ops->DataPDUInOrder)
  goto recover;



 pdu = cmd->pdu_ptr;

 switch (pdu->status) {
 case 129:
  pdu->status = 130;
  break;
 case 130:
  break;
 case 128:
  pdu->status = 130;
  break;
 default:
  return DATAOUT_CANNOT_RECOVER;
 }

recover:
 return iscsit_recover_dataout_sequence(cmd, be32_to_cpu(hdr->offset),
      payload_length);
}

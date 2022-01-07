
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_pdu {int status; } ;
struct iscsi_data {int offset; int dlength; } ;
struct iscsi_cmd {int conn; int init_task_tag; struct iscsi_pdu* pdu_ptr; } ;


 int DATAOUT_CANNOT_RECOVER ;
 int DATAOUT_NORMAL ;




 int be32_to_cpu (int ) ;
 int iscsit_dump_data_payload (int ,int ,int) ;
 struct iscsi_pdu* iscsit_get_pdu_holder (struct iscsi_cmd*,int ,int ) ;
 int ntoh24 (int ) ;
 int pr_err (char*,int ,int ,int ) ;

__attribute__((used)) static int iscsit_dataout_pre_datapduinorder_no(
 struct iscsi_cmd *cmd,
 unsigned char *buf)
{
 struct iscsi_pdu *pdu;
 struct iscsi_data *hdr = (struct iscsi_data *) buf;
 u32 payload_length = ntoh24(hdr->dlength);

 pdu = iscsit_get_pdu_holder(cmd, be32_to_cpu(hdr->offset),
        payload_length);
 if (!pdu)
  return DATAOUT_CANNOT_RECOVER;

 cmd->pdu_ptr = pdu;

 switch (pdu->status) {
 case 130:
 case 131:
 case 128:
  break;
 case 129:
  pr_err("Command ITT: 0x%08x received already gotten"
   " Offset: %u, Length: %u\n", cmd->init_task_tag,
    be32_to_cpu(hdr->offset), payload_length);
  return iscsit_dump_data_payload(cmd->conn, payload_length, 1);
 default:
  return DATAOUT_CANNOT_RECOVER;
 }

 return DATAOUT_NORMAL;
}

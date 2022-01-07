
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_pdu {int status; int data_sn; } ;
struct iscsi_cmd {struct iscsi_pdu* pdu_ptr; } ;


 int DATAOUT_CANNOT_RECOVER ;
 int DATAOUT_NORMAL ;


 void* ISCSI_PDU_RECEIVED_OK ;

 int iscsit_dataout_datapduinorder_no_fbit (struct iscsi_cmd*,struct iscsi_pdu*) ;

__attribute__((used)) static int iscsit_dataout_update_datapduinorder_no(
 struct iscsi_cmd *cmd,
 u32 data_sn,
 int f_bit)
{
 int ret = 0;
 struct iscsi_pdu *pdu = cmd->pdu_ptr;

 pdu->data_sn = data_sn;

 switch (pdu->status) {
 case 129:
  pdu->status = ISCSI_PDU_RECEIVED_OK;
  break;
 case 130:
  pdu->status = ISCSI_PDU_RECEIVED_OK;
  break;
 case 128:
  pdu->status = ISCSI_PDU_RECEIVED_OK;
  break;
 default:
  return DATAOUT_CANNOT_RECOVER;
 }

 if (f_bit) {
  ret = iscsit_dataout_datapduinorder_no_fbit(cmd, pdu);
  if (ret == DATAOUT_CANNOT_RECOVER)
   return ret;
 }

 return DATAOUT_NORMAL;
}

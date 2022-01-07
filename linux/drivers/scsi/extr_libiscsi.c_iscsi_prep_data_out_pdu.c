
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {int hdr_len; int hdr_itt; int lun; struct iscsi_conn* conn; } ;
struct iscsi_r2t_info {unsigned int data_length; unsigned int sent; unsigned int datasn; unsigned int data_offset; unsigned int data_count; int exp_statsn; int ttt; } ;
struct iscsi_data {scalar_t__ flags; int dlength; void* offset; int exp_statsn; int itt; int lun; int opcode; void* datasn; int ttt; } ;
struct iscsi_conn {unsigned int max_xmit_dlength; int dataout_pdus_cnt; } ;


 scalar_t__ ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_OP_SCSI_DATA_OUT ;
 void* cpu_to_be32 (unsigned int) ;
 int hton24 (int ,unsigned int) ;
 int memset (struct iscsi_data*,int ,int) ;

void iscsi_prep_data_out_pdu(struct iscsi_task *task, struct iscsi_r2t_info *r2t,
      struct iscsi_data *hdr)
{
 struct iscsi_conn *conn = task->conn;
 unsigned int left = r2t->data_length - r2t->sent;

 task->hdr_len = sizeof(struct iscsi_data);

 memset(hdr, 0, sizeof(struct iscsi_data));
 hdr->ttt = r2t->ttt;
 hdr->datasn = cpu_to_be32(r2t->datasn);
 r2t->datasn++;
 hdr->opcode = ISCSI_OP_SCSI_DATA_OUT;
 hdr->lun = task->lun;
 hdr->itt = task->hdr_itt;
 hdr->exp_statsn = r2t->exp_statsn;
 hdr->offset = cpu_to_be32(r2t->data_offset + r2t->sent);
 if (left > conn->max_xmit_dlength) {
  hton24(hdr->dlength, conn->max_xmit_dlength);
  r2t->data_count = conn->max_xmit_dlength;
  hdr->flags = 0;
 } else {
  hton24(hdr->dlength, left);
  r2t->data_count = left;
  hdr->flags = ISCSI_FLAG_CMD_FINAL;
 }
 conn->dataout_pdus_cnt++;
}

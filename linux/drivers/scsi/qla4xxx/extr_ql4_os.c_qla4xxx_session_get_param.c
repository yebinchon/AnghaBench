
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct scsi_qla_host {int dummy; } ;
struct ql4_chap_table {int secret_len; scalar_t__ secret; scalar_t__ name; } ;
struct iscsi_session {int password; int username; int password_in; int username_in; struct ddb_entry* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct iscsi_cls_conn {int dummy; } ;
struct ddb_entry {int chap_tbl_idx; int ddb_type; struct iscsi_cls_conn* conn; struct scsi_qla_host* ha; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;
typedef int chap_tbl ;


 int BIDI_CHAP ;
 int FLASH_DDB ;
 int INVALID_ENTRY ;




 int LOCAL_CHAP ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int iscsi_session_get_param (struct iscsi_cls_session*,int,char*) ;
 int iscsi_set_param (struct iscsi_cls_conn*,int const,char*,int ) ;
 int memset (struct ql4_chap_table*,int ,int) ;
 int qla4xxx_get_chap_index (struct scsi_qla_host*,int ,int ,int ,int *) ;
 int qla4xxx_get_uni_chap_at_index (struct scsi_qla_host*,scalar_t__,scalar_t__,int ) ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static int qla4xxx_session_get_param(struct iscsi_cls_session *cls_sess,
         enum iscsi_param param, char *buf)
{
 struct iscsi_session *sess = cls_sess->dd_data;
 struct ddb_entry *ddb_entry = sess->dd_data;
 struct scsi_qla_host *ha = ddb_entry->ha;
 struct iscsi_cls_conn *cls_conn = ddb_entry->conn;
 struct ql4_chap_table chap_tbl;
 int rval, len;
 uint16_t idx;

 memset(&chap_tbl, 0, sizeof(chap_tbl));
 switch (param) {
 case 131:
  rval = qla4xxx_get_chap_index(ha, sess->username_in,
           sess->password_in, BIDI_CHAP,
           &idx);
  if (rval)
   len = sprintf(buf, "\n");
  else
   len = sprintf(buf, "%hu\n", idx);
  break;
 case 130:
  if (ddb_entry->ddb_type == FLASH_DDB) {
   if (ddb_entry->chap_tbl_idx != INVALID_ENTRY) {
    idx = ddb_entry->chap_tbl_idx;
    rval = QLA_SUCCESS;
   } else {
    rval = QLA_ERROR;
   }
  } else {
   rval = qla4xxx_get_chap_index(ha, sess->username,
            sess->password,
            LOCAL_CHAP, &idx);
  }
  if (rval)
   len = sprintf(buf, "\n");
  else
   len = sprintf(buf, "%hu\n", idx);
  break;
 case 128:
 case 129:




  if (ddb_entry->ddb_type == FLASH_DDB &&
      ddb_entry->chap_tbl_idx != INVALID_ENTRY &&
      !sess->username && !sess->password) {
   idx = ddb_entry->chap_tbl_idx;
   rval = qla4xxx_get_uni_chap_at_index(ha, chap_tbl.name,
           chap_tbl.secret,
           idx);
   if (!rval) {
    iscsi_set_param(cls_conn, 128,
      (char *)chap_tbl.name,
      strlen((char *)chap_tbl.name));
    iscsi_set_param(cls_conn, 129,
      (char *)chap_tbl.secret,
      chap_tbl.secret_len);
   }
  }

 default:
  return iscsi_session_get_param(cls_sess, param, buf);
 }

 return len;
}

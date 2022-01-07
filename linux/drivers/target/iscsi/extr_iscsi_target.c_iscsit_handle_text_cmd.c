
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct kvec {char* iov_base; int iov_len; } ;
struct iscsi_text {int cmdsn; int dlength; } ;
struct iscsi_conn {TYPE_3__* sess; int conn_rx_hash; TYPE_1__* conn_ops; } ;
struct iscsi_cmd {char* text_in_ptr; } ;
typedef int iov ;
struct TYPE_6__ {TYPE_2__* sess_ops; } ;
struct TYPE_5__ {int ErrorRecoveryLevel; } ;
struct TYPE_4__ {scalar_t__ DataDigest; } ;


 int ALIGN (int,int) ;
 int ARRAY_SIZE (struct kvec*) ;
 int GFP_KERNEL ;
 int ISCSI_CRC_LEN ;
 int ISCSI_REASON_PROTOCOL_ERROR ;
 int WARN_ON_ONCE (int) ;
 int iscsit_do_crypto_hash_buf (int ,char*,int,int ,int *,int*) ;
 int iscsit_process_text_cmd (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_text*) ;
 int iscsit_reject_cmd (struct iscsi_cmd*,int ,unsigned char*) ;
 int iscsit_setup_text_cmd (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_text*) ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int memset (struct kvec*,int ,int) ;
 int ntoh24 (int ) ;
 int pr_debug (char*,int,...) ;
 int pr_err (char*,...) ;
 int rx_data (struct iscsi_conn*,struct kvec*,int,int) ;

__attribute__((used)) static int
iscsit_handle_text_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
         unsigned char *buf)
{
 struct iscsi_text *hdr = (struct iscsi_text *)buf;
 char *text_in = ((void*)0);
 u32 payload_length = ntoh24(hdr->dlength);
 int rx_size, rc;

 rc = iscsit_setup_text_cmd(conn, cmd, hdr);
 if (rc < 0)
  return 0;

 rx_size = payload_length;
 if (payload_length) {
  u32 checksum = 0, data_crc = 0;
  u32 padding = 0;
  int niov = 0, rx_got;
  struct kvec iov[2];

  rx_size = ALIGN(payload_length, 4);
  text_in = kzalloc(rx_size, GFP_KERNEL);
  if (!text_in)
   goto reject;

  cmd->text_in_ptr = text_in;

  memset(iov, 0, sizeof(iov));
  iov[niov].iov_base = text_in;
  iov[niov++].iov_len = rx_size;

  padding = rx_size - payload_length;
  if (padding)
   pr_debug("Receiving %u additional bytes"
     " for padding.\n", padding);
  if (conn->conn_ops->DataDigest) {
   iov[niov].iov_base = &checksum;
   iov[niov++].iov_len = ISCSI_CRC_LEN;
   rx_size += ISCSI_CRC_LEN;
  }

  WARN_ON_ONCE(niov > ARRAY_SIZE(iov));
  rx_got = rx_data(conn, &iov[0], niov, rx_size);
  if (rx_got != rx_size)
   goto reject;

  if (conn->conn_ops->DataDigest) {
   iscsit_do_crypto_hash_buf(conn->conn_rx_hash,
        text_in, rx_size, 0, ((void*)0),
        &data_crc);

   if (checksum != data_crc) {
    pr_err("Text data CRC32C DataDigest"
     " 0x%08x does not match computed"
     " 0x%08x\n", checksum, data_crc);
    if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
     pr_err("Unable to recover from"
     " Text Data digest failure while in"
      " ERL=0.\n");
     goto reject;
    } else {




     pr_debug("Dropping Text"
     " Command CmdSN: 0x%08x due to"
     " DataCRC error.\n", hdr->cmdsn);
     kfree(text_in);
     return 0;
    }
   } else {
    pr_debug("Got CRC32C DataDigest"
     " 0x%08x for %u bytes of text data.\n",
      checksum, payload_length);
   }
  }
  text_in[payload_length - 1] = '\0';
  pr_debug("Successfully read %d bytes of text"
    " data.\n", payload_length);
 }

 return iscsit_process_text_cmd(conn, cmd, hdr);

reject:
 kfree(cmd->text_in_ptr);
 cmd->text_in_ptr = ((void*)0);
 return iscsit_reject_cmd(cmd, ISCSI_REASON_PROTOCOL_ERROR, buf);
}

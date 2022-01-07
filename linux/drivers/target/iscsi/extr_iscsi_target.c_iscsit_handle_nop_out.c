
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct kvec {unsigned char* iov_base; int iov_len; } ;
struct iscsi_nopout {scalar_t__ ttt; unsigned char* cmdsn; int dlength; } ;
struct iscsi_conn {TYPE_3__* sess; int conn_rx_hash; TYPE_1__* conn_ops; } ;
struct iscsi_cmd {unsigned char pad_bytes; unsigned char* buf_ptr; int buf_ptr_size; struct kvec* iov_misc; } ;
struct TYPE_6__ {TYPE_2__* sess_ops; } ;
struct TYPE_5__ {int ErrorRecoveryLevel; } ;
struct TYPE_4__ {scalar_t__ DataDigest; } ;


 int ARRAY_SIZE (struct kvec*) ;
 int GFP_KERNEL ;
 int ISCSI_CRC_LEN ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ cpu_to_be32 (int) ;
 int iscsit_do_crypto_hash_buf (int ,unsigned char*,int,int,unsigned char,int*) ;
 int iscsit_free_cmd (struct iscsi_cmd*,int) ;
 int iscsit_process_nop_out (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_nopout*) ;
 int iscsit_setup_nop_out (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_nopout*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int ,int ) ;
 int ntoh24 (int ) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,...) ;
 int rx_data (struct iscsi_conn*,struct kvec*,int,int) ;

__attribute__((used)) static int iscsit_handle_nop_out(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
     unsigned char *buf)
{
 unsigned char *ping_data = ((void*)0);
 struct iscsi_nopout *hdr = (struct iscsi_nopout *)buf;
 struct kvec *iov = ((void*)0);
 u32 payload_length = ntoh24(hdr->dlength);
 int ret;

 ret = iscsit_setup_nop_out(conn, cmd, hdr);
 if (ret < 0)
  return 0;



 if (payload_length && hdr->ttt == cpu_to_be32(0xFFFFFFFF)) {
  u32 checksum, data_crc, padding = 0;
  int niov = 0, rx_got, rx_size = payload_length;

  ping_data = kzalloc(payload_length + 1, GFP_KERNEL);
  if (!ping_data) {
   ret = -1;
   goto out;
  }

  iov = &cmd->iov_misc[0];
  iov[niov].iov_base = ping_data;
  iov[niov++].iov_len = payload_length;

  padding = ((-payload_length) & 3);
  if (padding != 0) {
   pr_debug("Receiving %u additional bytes"
    " for padding.\n", padding);
   iov[niov].iov_base = &cmd->pad_bytes;
   iov[niov++].iov_len = padding;
   rx_size += padding;
  }
  if (conn->conn_ops->DataDigest) {
   iov[niov].iov_base = &checksum;
   iov[niov++].iov_len = ISCSI_CRC_LEN;
   rx_size += ISCSI_CRC_LEN;
  }

  WARN_ON_ONCE(niov > ARRAY_SIZE(cmd->iov_misc));
  rx_got = rx_data(conn, &cmd->iov_misc[0], niov, rx_size);
  if (rx_got != rx_size) {
   ret = -1;
   goto out;
  }

  if (conn->conn_ops->DataDigest) {
   iscsit_do_crypto_hash_buf(conn->conn_rx_hash, ping_data,
        payload_length, padding,
        cmd->pad_bytes, &data_crc);

   if (checksum != data_crc) {
    pr_err("Ping data CRC32C DataDigest"
    " 0x%08x does not match computed 0x%08x\n",
     checksum, data_crc);
    if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
     pr_err("Unable to recover from"
     " NOPOUT Ping DataCRC failure while in"
      " ERL=0.\n");
     ret = -1;
     goto out;
    } else {




     pr_debug("Dropping NOPOUT"
     " Command CmdSN: 0x%08x due to"
     " DataCRC error.\n", hdr->cmdsn);
     ret = 0;
     goto out;
    }
   } else {
    pr_debug("Got CRC32C DataDigest"
    " 0x%08x for %u bytes of ping data.\n",
     checksum, payload_length);
   }
  }

  ping_data[payload_length] = '\0';



  cmd->buf_ptr = ping_data;
  cmd->buf_ptr_size = payload_length;

  pr_debug("Got %u bytes of NOPOUT ping"
   " data.\n", payload_length);
  pr_debug("Ping Data: \"%s\"\n", ping_data);
 }

 return iscsit_process_nop_out(conn, cmd, hdr);
out:
 if (cmd)
  iscsit_free_cmd(cmd, 0);

 kfree(ping_data);
 return ret;
}

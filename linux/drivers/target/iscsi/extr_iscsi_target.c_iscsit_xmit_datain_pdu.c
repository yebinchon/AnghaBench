
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct kvec {size_t iov_len; int * iov_base; } ;
struct iscsi_datain {size_t length; int offset; } ;
struct iscsi_conn {int conn_tx_hash; TYPE_1__* conn_ops; } ;
struct iscsi_cmd {int padding; size_t iov_data_count; size_t tx_size; int data_crc; int * pad_bytes; scalar_t__ orig_iov_data_count; struct kvec* iov_data; int * pdu; } ;
struct TYPE_2__ {scalar_t__ DataDigest; scalar_t__ HeaderDigest; } ;


 size_t ISCSI_CRC_LEN ;
 size_t ISCSI_HDR_LEN ;
 int iscsit_do_crypto_hash_buf (int ,int *,size_t,int ,int *,size_t*) ;
 int iscsit_do_crypto_hash_sg (int ,struct iscsi_cmd*,int ,int,size_t,int *) ;
 int iscsit_fe_sendpage_sg (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_map_iovec (struct iscsi_cmd*,struct kvec*,scalar_t__,int ,size_t) ;
 int iscsit_tx_thread_wait_for_tcp (struct iscsi_conn*) ;
 int iscsit_unmap_iovec (struct iscsi_cmd*) ;
 int pr_debug (char*,size_t,...) ;

__attribute__((used)) static int
iscsit_xmit_datain_pdu(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
         const struct iscsi_datain *datain)
{
 struct kvec *iov;
 u32 iov_count = 0, tx_size = 0;
 int ret, iov_ret;

 iov = &cmd->iov_data[0];
 iov[iov_count].iov_base = cmd->pdu;
 iov[iov_count++].iov_len = ISCSI_HDR_LEN;
 tx_size += ISCSI_HDR_LEN;

 if (conn->conn_ops->HeaderDigest) {
  u32 *header_digest = (u32 *)&cmd->pdu[ISCSI_HDR_LEN];

  iscsit_do_crypto_hash_buf(conn->conn_tx_hash, cmd->pdu,
       ISCSI_HDR_LEN, 0, ((void*)0),
       header_digest);

  iov[0].iov_len += ISCSI_CRC_LEN;
  tx_size += ISCSI_CRC_LEN;

  pr_debug("Attaching CRC32 HeaderDigest for DataIN PDU 0x%08x\n",
    *header_digest);
 }

 iov_ret = iscsit_map_iovec(cmd, &cmd->iov_data[iov_count],
       cmd->orig_iov_data_count - (iov_count + 2),
       datain->offset, datain->length);
 if (iov_ret < 0)
  return -1;

 iov_count += iov_ret;
 tx_size += datain->length;

 cmd->padding = ((-datain->length) & 3);
 if (cmd->padding) {
  iov[iov_count].iov_base = cmd->pad_bytes;
  iov[iov_count++].iov_len = cmd->padding;
  tx_size += cmd->padding;

  pr_debug("Attaching %u padding bytes\n", cmd->padding);
 }

 if (conn->conn_ops->DataDigest) {
  cmd->data_crc = iscsit_do_crypto_hash_sg(conn->conn_tx_hash,
        cmd, datain->offset,
        datain->length,
        cmd->padding,
        cmd->pad_bytes);

  iov[iov_count].iov_base = &cmd->data_crc;
  iov[iov_count++].iov_len = ISCSI_CRC_LEN;
  tx_size += ISCSI_CRC_LEN;

  pr_debug("Attached CRC32C DataDigest %d bytes, crc 0x%08x\n",
    datain->length + cmd->padding, cmd->data_crc);
 }

 cmd->iov_data_count = iov_count;
 cmd->tx_size = tx_size;

 ret = iscsit_fe_sendpage_sg(cmd, conn);

 iscsit_unmap_iovec(cmd);

 if (ret < 0) {
  iscsit_tx_thread_wait_for_tcp(conn);
  return ret;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvec {int iov_len; char* iov_base; } ;
struct iscsi_conn {int dummy; } ;


 int ISCSI_HDR_LEN ;
 int memset (struct kvec*,int ,int) ;
 int pr_err (char*,int,int) ;
 int tx_data (struct iscsi_conn*,struct kvec*,int,int) ;

int iscsi_login_tx_data(
 struct iscsi_conn *conn,
 char *pdu_buf,
 char *text_buf,
 int text_length)
{
 int length, tx_sent, iov_cnt = 1;
 struct kvec iov[2];

 length = (ISCSI_HDR_LEN + text_length);

 memset(&iov[0], 0, 2 * sizeof(struct kvec));
 iov[0].iov_len = ISCSI_HDR_LEN;
 iov[0].iov_base = pdu_buf;

 if (text_buf && text_length) {
  iov[1].iov_len = text_length;
  iov[1].iov_base = text_buf;
  iov_cnt++;
 }

 tx_sent = tx_data(conn, &iov[0], iov_cnt, length);
 if (tx_sent != length) {
  pr_err("tx_data returned %d, expecting %d.\n",
    tx_sent, length);
  return -1;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_segment {scalar_t__ total_copied; scalar_t__ total_size; int (* done ) (struct iscsi_tcp_conn*,struct iscsi_segment*) ;} ;
struct TYPE_2__ {struct iscsi_segment segment; } ;
struct iscsi_sw_tcp_conn {TYPE_1__ out; } ;
struct iscsi_conn {unsigned int txdata_octets; struct iscsi_tcp_conn* dd_data; } ;


 int EAGAIN ;
 int EIO ;
 int ISCSI_ERR_XMIT_FAILED ;
 int ISCSI_SW_TCP_DBG (struct iscsi_conn*,char*,int) ;
 int iscsi_conn_failure (struct iscsi_conn*,int) ;
 int iscsi_sw_tcp_xmit_segment (struct iscsi_tcp_conn*,struct iscsi_segment*) ;
 int stub1 (struct iscsi_tcp_conn*,struct iscsi_segment*) ;

__attribute__((used)) static int iscsi_sw_tcp_xmit(struct iscsi_conn *conn)
{
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
 struct iscsi_segment *segment = &tcp_sw_conn->out.segment;
 unsigned int consumed = 0;
 int rc = 0;

 while (1) {
  rc = iscsi_sw_tcp_xmit_segment(tcp_conn, segment);





  if (rc == -EAGAIN)
   return rc;
  else if (rc < 0) {
   rc = ISCSI_ERR_XMIT_FAILED;
   goto error;
  } else if (rc == 0)
   break;

  consumed += rc;

  if (segment->total_copied >= segment->total_size) {
   if (segment->done != ((void*)0)) {
    rc = segment->done(tcp_conn, segment);
    if (rc != 0)
     goto error;
   }
  }
 }

 ISCSI_SW_TCP_DBG(conn, "xmit %d bytes\n", consumed);

 conn->txdata_octets += consumed;
 return consumed;

error:


 ISCSI_SW_TCP_DBG(conn, "Error sending PDU, errno=%d\n", rc);
 iscsi_conn_failure(conn, rc);
 return -EIO;
}

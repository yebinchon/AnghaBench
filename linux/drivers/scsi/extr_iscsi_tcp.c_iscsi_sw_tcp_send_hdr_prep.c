
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct TYPE_2__ {int segment; void* hdr; int data_segment; } ;
struct iscsi_sw_tcp_conn {TYPE_1__ out; int tx_hash; } ;
struct iscsi_segment {int dummy; } ;
struct iscsi_conn {scalar_t__ hdrdgst_en; struct iscsi_tcp_conn* dd_data; } ;


 scalar_t__ ISCSI_DIGEST_SIZE ;
 int ISCSI_SW_TCP_DBG (struct iscsi_conn*,char*,char*) ;
 int iscsi_segment_init_linear (int *,void*,size_t,int ,int *) ;
 int iscsi_sw_tcp_send_hdr_done ;
 int iscsi_tcp_dgst_header (int ,void*,size_t,void*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void iscsi_sw_tcp_send_hdr_prep(struct iscsi_conn *conn, void *hdr,
           size_t hdrlen)
{
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;

 ISCSI_SW_TCP_DBG(conn, "%s\n", conn->hdrdgst_en ?
    "digest enabled" : "digest disabled");



 memset(&tcp_sw_conn->out.data_segment, 0,
        sizeof(struct iscsi_segment));






 if (conn->hdrdgst_en) {
  iscsi_tcp_dgst_header(tcp_sw_conn->tx_hash, hdr, hdrlen,
          hdr + hdrlen);
  hdrlen += ISCSI_DIGEST_SIZE;
 }




 tcp_sw_conn->out.hdr = hdr;

 iscsi_segment_init_linear(&tcp_sw_conn->out.segment, hdr, hdrlen,
      iscsi_sw_tcp_send_hdr_done, ((void*)0));
}

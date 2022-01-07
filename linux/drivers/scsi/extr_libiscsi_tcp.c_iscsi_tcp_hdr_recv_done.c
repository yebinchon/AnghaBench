
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct iscsi_hdr* hdr; scalar_t__ hdr_buf; } ;
struct iscsi_tcp_conn {TYPE_3__ in; int rx_hash; struct iscsi_conn* iscsi_conn; } ;
struct iscsi_segment {int copied; unsigned int total_size; unsigned int size; scalar_t__ digest_len; int digest; scalar_t__ total_copied; int recv_digest; } ;
struct iscsi_hdr {int hlength; } ;
struct iscsi_conn {TYPE_2__* session; scalar_t__ hdrdgst_en; } ;
struct TYPE_5__ {TYPE_1__* tt; } ;
struct TYPE_4__ {int caps; } ;


 int CAP_DIGEST_OFFLOAD ;
 scalar_t__ ISCSI_DIGEST_SIZE ;
 int ISCSI_ERR_AHSLEN ;
 int ISCSI_ERR_HDR_DGST ;
 int iscsi_tcp_dgst_header (int ,struct iscsi_hdr*,scalar_t__,int ) ;
 int iscsi_tcp_dgst_verify (struct iscsi_tcp_conn*,struct iscsi_segment*) ;
 int iscsi_tcp_hdr_dissect (struct iscsi_conn*,struct iscsi_hdr*) ;
 int iscsi_tcp_segment_splice_digest (struct iscsi_segment*,int ) ;

__attribute__((used)) static int
iscsi_tcp_hdr_recv_done(struct iscsi_tcp_conn *tcp_conn,
   struct iscsi_segment *segment)
{
 struct iscsi_conn *conn = tcp_conn->iscsi_conn;
 struct iscsi_hdr *hdr;





 hdr = (struct iscsi_hdr *) tcp_conn->in.hdr_buf;
 if (segment->copied == sizeof(struct iscsi_hdr) && hdr->hlength) {



  unsigned int ahslen = hdr->hlength << 2;


  if (sizeof(*hdr) + ahslen > sizeof(tcp_conn->in.hdr_buf))
   return ISCSI_ERR_AHSLEN;

  segment->total_size += ahslen;
  segment->size += ahslen;
  return 0;
 }




 if (conn->hdrdgst_en &&
     !(conn->session->tt->caps & CAP_DIGEST_OFFLOAD)) {
  if (segment->digest_len == 0) {





   iscsi_tcp_segment_splice_digest(segment,
       segment->recv_digest);
   return 0;
  }

  iscsi_tcp_dgst_header(tcp_conn->rx_hash, hdr,
          segment->total_copied - ISCSI_DIGEST_SIZE,
          segment->digest);

  if (!iscsi_tcp_dgst_verify(tcp_conn, segment))
   return ISCSI_ERR_HDR_DGST;
 }

 tcp_conn->in.hdr = hdr;
 return iscsi_tcp_hdr_dissect(conn, hdr);
}

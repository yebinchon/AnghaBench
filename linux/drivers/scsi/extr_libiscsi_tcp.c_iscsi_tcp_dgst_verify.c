
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tcp_conn {int iscsi_conn; } ;
struct iscsi_segment {int digest_len; int digest; int recv_digest; } ;


 int ISCSI_DBG_TCP (int ,char*) ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static inline int
iscsi_tcp_dgst_verify(struct iscsi_tcp_conn *tcp_conn,
        struct iscsi_segment *segment)
{
 if (!segment->digest_len)
  return 1;

 if (memcmp(segment->recv_digest, segment->digest,
     segment->digest_len)) {
  ISCSI_DBG_TCP(tcp_conn->iscsi_conn, "digest mismatch\n");
  return 0;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_segment {int * hash; int * sg; scalar_t__ copied; void* size; int total_size; void* digest_len; void* data; } ;


 void* ISCSI_DIGEST_SIZE ;

__attribute__((used)) static inline void
iscsi_tcp_segment_splice_digest(struct iscsi_segment *segment, void *digest)
{
 segment->data = digest;
 segment->digest_len = ISCSI_DIGEST_SIZE;
 segment->total_size += ISCSI_DIGEST_SIZE;
 segment->size = ISCSI_DIGEST_SIZE;
 segment->copied = 0;
 segment->sg = ((void*)0);
 segment->hash = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_segment {size_t size; void* data; } ;
struct ahash_request {int dummy; } ;
typedef int iscsi_segment_done_fn_t ;


 int __iscsi_segment_init (struct iscsi_segment*,size_t,int *,struct ahash_request*) ;

inline void
iscsi_segment_init_linear(struct iscsi_segment *segment, void *data,
     size_t size, iscsi_segment_done_fn_t *done,
     struct ahash_request *hash)
{
 __iscsi_segment_init(segment, size, done, hash);
 segment->data = data;
 segment->size = size;
}

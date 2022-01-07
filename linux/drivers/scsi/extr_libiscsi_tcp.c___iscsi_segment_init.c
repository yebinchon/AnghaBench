
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_segment {size_t total_size; struct ahash_request* hash; int * done; } ;
struct ahash_request {int dummy; } ;
typedef int iscsi_segment_done_fn_t ;


 int crypto_ahash_init (struct ahash_request*) ;
 int memset (struct iscsi_segment*,int ,int) ;

__attribute__((used)) static inline void
__iscsi_segment_init(struct iscsi_segment *segment, size_t size,
       iscsi_segment_done_fn_t *done, struct ahash_request *hash)
{
 memset(segment, 0, sizeof(*segment));
 segment->total_size = size;
 segment->done = done;

 if (hash) {
  segment->hash = hash;
  crypto_ahash_init(hash);
 }
}

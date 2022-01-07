
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_buffer {int dummy; } ;


 scalar_t__ BMAN_REV20 ;
 scalar_t__ BMAN_REV21 ;
 int BMAN_TOKEN_MASK ;
 int bm_buffer_get64 (struct bm_buffer const*) ;
 scalar_t__ bman_ip_rev ;

__attribute__((used)) static inline int bufs_cmp(const struct bm_buffer *a, const struct bm_buffer *b)
{
 if (bman_ip_rev == BMAN_REV20 || bman_ip_rev == BMAN_REV21) {
  if ((bm_buffer_get64(a) & BMAN_TOKEN_MASK) <
      (bm_buffer_get64(b) & BMAN_TOKEN_MASK))
   return -1;
  if ((bm_buffer_get64(a) & BMAN_TOKEN_MASK) >
      (bm_buffer_get64(b) & BMAN_TOKEN_MASK))
   return 1;
 } else {
  if (bm_buffer_get64(a) < bm_buffer_get64(b))
   return -1;
  if (bm_buffer_get64(a) > bm_buffer_get64(b))
   return 1;
 }

 return 0;
}

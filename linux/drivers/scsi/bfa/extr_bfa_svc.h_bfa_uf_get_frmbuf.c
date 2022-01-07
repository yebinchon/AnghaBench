
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_uf_s {void* data_ptr; } ;



__attribute__((used)) static inline void *
bfa_uf_get_frmbuf(struct bfa_uf_s *uf)
{
 return uf->data_ptr;
}

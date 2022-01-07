
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bfa_uf_s {int data_len; } ;



__attribute__((used)) static inline u16
bfa_uf_get_frmlen(struct bfa_uf_s *uf)
{
 return uf->data_len;
}

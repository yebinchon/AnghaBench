
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ct_hdr_s {int dummy; } ;



__attribute__((used)) static inline u32
fc_get_ctresp_pyld_len(u32 resp_len)
{
 return resp_len - sizeof(struct ct_hdr_s);
}

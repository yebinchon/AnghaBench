
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qbman_fq_query_np_rslt {int byte_cnt; } ;


 int le32_to_cpu (int ) ;

u32 qbman_fq_state_byte_count(const struct qbman_fq_query_np_rslt *r)
{
 return le32_to_cpu(r->byte_cnt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qbman_bp_query_rslt {int fill; } ;


 int le32_to_cpu (int ) ;

u32 qbman_bp_info_num_free_bufs(struct qbman_bp_query_rslt *a)
{
 return le32_to_cpu(a->fill);
}

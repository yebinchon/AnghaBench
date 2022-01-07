
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dos_dentry_t {int start_clu_hi; int start_clu_lo; } ;
struct dentry_t {int dummy; } ;


 int CLUSTER_16 (int) ;
 int SET16_A (int ,int ) ;

void fat_set_entry_clu0(struct dentry_t *p_entry, u32 start_clu)
{
 struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;

 SET16_A(ep->start_clu_lo, CLUSTER_16(start_clu));
 SET16_A(ep->start_clu_hi, CLUSTER_16(start_clu >> 16));
}

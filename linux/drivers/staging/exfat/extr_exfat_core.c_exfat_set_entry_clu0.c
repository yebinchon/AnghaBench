
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct strm_dentry_t {int start_clu; } ;
struct dentry_t {int dummy; } ;


 int SET32_A (int ,int ) ;

void exfat_set_entry_clu0(struct dentry_t *p_entry, u32 start_clu)
{
 struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;

 SET32_A(ep->start_clu, start_clu);
}

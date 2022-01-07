
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct strm_dentry_t {int start_clu; } ;
struct dentry_t {int dummy; } ;


 int GET32_A (int ) ;

u32 exfat_get_entry_clu0(struct dentry_t *p_entry)
{
 struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;

 return GET32_A(ep->start_clu);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct strm_dentry_t {int valid_size; } ;
struct dentry_t {int dummy; } ;


 int GET64_A (int ) ;

u64 exfat_get_entry_size(struct dentry_t *p_entry)
{
 struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;

 return GET64_A(ep->valid_size);
}

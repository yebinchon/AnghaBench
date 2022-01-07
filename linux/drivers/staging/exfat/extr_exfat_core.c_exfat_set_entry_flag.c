
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct strm_dentry_t {int flags; } ;
struct dentry_t {int dummy; } ;



void exfat_set_entry_flag(struct dentry_t *p_entry, u8 flags)
{
 struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;

 ep->flags = flags;
}

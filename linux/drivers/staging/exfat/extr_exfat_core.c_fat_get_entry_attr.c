
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dos_dentry_t {int attr; } ;
struct dentry_t {int dummy; } ;



u32 fat_get_entry_attr(struct dentry_t *p_entry)
{
 struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;

 return (u32)ep->attr;
}

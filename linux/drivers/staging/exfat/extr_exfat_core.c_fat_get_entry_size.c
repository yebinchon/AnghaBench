
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dos_dentry_t {int size; } ;
struct dentry_t {int dummy; } ;


 int GET32_A (int ) ;

u64 fat_get_entry_size(struct dentry_t *p_entry)
{
 struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;

 return (u64)GET32_A(ep->size);
}

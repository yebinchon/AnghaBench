
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct dos_dentry_t {int size; } ;
struct dentry_t {int dummy; } ;


 int SET32_A (int ,int ) ;

void fat_set_entry_size(struct dentry_t *p_entry, u64 size)
{
 struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;

 SET32_A(ep->size, (u32)size);
}

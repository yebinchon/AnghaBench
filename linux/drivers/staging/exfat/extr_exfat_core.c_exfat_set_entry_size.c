
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct strm_dentry_t {int size; int valid_size; } ;
struct dentry_t {int dummy; } ;


 int SET64_A (int ,int ) ;

void exfat_set_entry_size(struct dentry_t *p_entry, u64 size)
{
 struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;

 SET64_A(ep->valid_size, size);
 SET64_A(ep->size, size);
}

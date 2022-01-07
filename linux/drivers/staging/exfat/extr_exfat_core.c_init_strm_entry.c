
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct strm_dentry_t {int size; int valid_size; int start_clu; int flags; } ;
struct dentry_t {int dummy; } ;


 int SET32_A (int ,int ) ;
 int SET64_A (int ,int ) ;
 int TYPE_STREAM ;
 int exfat_set_entry_type (struct dentry_t*,int ) ;

void init_strm_entry(struct strm_dentry_t *ep, u8 flags, u32 start_clu, u64 size)
{
 exfat_set_entry_type((struct dentry_t *)ep, TYPE_STREAM);
 ep->flags = flags;
 SET32_A(ep->start_clu, start_clu);
 SET64_A(ep->valid_size, size);
 SET64_A(ep->size, size);
}

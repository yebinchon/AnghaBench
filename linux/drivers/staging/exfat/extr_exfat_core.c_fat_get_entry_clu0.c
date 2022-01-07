
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dos_dentry_t {int start_clu_lo; int start_clu_hi; } ;
struct dentry_t {int dummy; } ;


 int GET16_A (int ) ;

u32 fat_get_entry_clu0(struct dentry_t *p_entry)
{
 struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;

 return ((u32)GET16_A(ep->start_clu_hi) << 16) |
  GET16_A(ep->start_clu_lo);
}

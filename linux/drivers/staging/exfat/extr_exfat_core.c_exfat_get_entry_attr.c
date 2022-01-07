
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file_dentry_t {int attr; } ;
struct dentry_t {int dummy; } ;


 int GET16_A (int ) ;

u32 exfat_get_entry_attr(struct dentry_t *p_entry)
{
 struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;

 return (u32)GET16_A(ep->attr);
}

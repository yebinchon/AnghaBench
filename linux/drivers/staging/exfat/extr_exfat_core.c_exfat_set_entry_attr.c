
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct file_dentry_t {int attr; } ;
struct dentry_t {int dummy; } ;


 int SET16_A (int ,int ) ;

void exfat_set_entry_attr(struct dentry_t *p_entry, u32 attr)
{
 struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;

 SET16_A(ep->attr, (u16)attr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct exfat_inode_info {char* target; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;


 struct exfat_inode_info* EXFAT_I (struct inode*) ;

__attribute__((used)) static const char *exfat_get_link(struct dentry *dentry, struct inode *inode,
      struct delayed_call *done)
{
 struct exfat_inode_info *ei = EXFAT_I(inode);

 if (ei->target) {
  char *cookie = ei->target;

  if (cookie)
   return (char *)(ei->target);
 }
 return ((void*)0);
}

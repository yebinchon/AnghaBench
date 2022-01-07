
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {void* d_fsdata; TYPE_1__* d_sb; } ;
struct TYPE_2__ {scalar_t__ s_magic; } ;


 scalar_t__ DEVPTS_SUPER_MAGIC ;

void *devpts_get_priv(struct dentry *dentry)
{
 if (dentry->d_sb->s_magic != DEVPTS_SUPER_MAGIC)
  return ((void*)0);
 return dentry->d_fsdata;
}

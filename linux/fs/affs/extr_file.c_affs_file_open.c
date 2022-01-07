
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int i_opencnt; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int
affs_file_open(struct inode *inode, struct file *filp)
{
 pr_debug("open(%lu,%d)\n",
   inode->i_ino, atomic_read(&AFFS_I(inode)->i_opencnt));
 atomic_inc(&AFFS_I(inode)->i_opencnt);
 return 0;
}

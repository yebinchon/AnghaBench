
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EREMOTE ;
 int _enter (char*,struct inode*,struct file*,struct file*) ;

__attribute__((used)) static int afs_mntpt_open(struct inode *inode, struct file *file)
{
 _enter("%p,%p{%pD2}", inode, file, file);
 return -EREMOTE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int size; } ;
struct TYPE_4__ {TYPE_1__ fid; } ;


 TYPE_2__* EXFAT_I (struct inode*) ;
 int ffsSyncVol (struct super_block*,int) ;
 int i_size_read (struct inode*) ;

__attribute__((used)) static int exfat_file_release(struct inode *inode, struct file *filp)
{
 struct super_block *sb = inode->i_sb;

 EXFAT_I(inode)->fid.size = i_size_read(inode);
 ffsSyncVol(sb, 0);
 return 0;
}

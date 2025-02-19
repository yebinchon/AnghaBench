
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; } ;
struct super_block {int dummy; } ;
struct object_info {int size; int attr; int execaddr; int loadaddr; int parent_id; scalar_t__ name_len; int indaddr; } ;
struct inode {int i_size; int i_ino; struct super_block* i_sb; } ;
struct TYPE_2__ {int attr; int execaddr; int loadaddr; int parent_id; } ;


 TYPE_1__* ADFS_I (struct inode*) ;
 scalar_t__ WB_SYNC_ALL ;
 int adfs_dir_update (struct super_block*,struct object_info*,int) ;

int adfs_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 struct super_block *sb = inode->i_sb;
 struct object_info obj;
 int ret;

 obj.indaddr = inode->i_ino;
 obj.name_len = 0;
 obj.parent_id = ADFS_I(inode)->parent_id;
 obj.loadaddr = ADFS_I(inode)->loadaddr;
 obj.execaddr = ADFS_I(inode)->execaddr;
 obj.attr = ADFS_I(inode)->attr;
 obj.size = inode->i_size;

 ret = adfs_dir_update(sb, &obj, wbc->sync_mode == WB_SYNC_ALL);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {struct bfad_debug_info* private_data; } ;
struct bfad_debug_info {int i_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct bfad_debug_info* kzalloc (int,int ) ;

__attribute__((used)) static int
bfad_debugfs_open_reg(struct inode *inode, struct file *file)
{
 struct bfad_debug_info *reg_debug;

 reg_debug = kzalloc(sizeof(struct bfad_debug_info), GFP_KERNEL);
 if (!reg_debug)
  return -ENOMEM;

 reg_debug->i_private = inode->i_private;

 file->private_data = reg_debug;

 return 0;
}

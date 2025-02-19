
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct bfad_debug_info* private_data; } ;
struct bfad_debug_info {int dummy; } ;


 int kfree (struct bfad_debug_info*) ;

__attribute__((used)) static int
bfad_debugfs_release(struct inode *inode, struct file *file)
{
 struct bfad_debug_info *debug = file->private_data;

 if (!debug)
  return 0;

 file->private_data = ((void*)0);
 kfree(debug);
 return 0;
}

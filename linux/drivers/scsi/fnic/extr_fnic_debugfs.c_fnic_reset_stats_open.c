
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_debug_info {int i_private; } ;
struct inode {int i_private; } ;
struct file {struct stats_debug_info* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct stats_debug_info* kzalloc (int,int ) ;

__attribute__((used)) static int fnic_reset_stats_open(struct inode *inode, struct file *file)
{
 struct stats_debug_info *debug;

 debug = kzalloc(sizeof(struct stats_debug_info), GFP_KERNEL);
 if (!debug)
  return -ENOMEM;

 debug->i_private = inode->i_private;

 file->private_data = debug;

 return 0;
}

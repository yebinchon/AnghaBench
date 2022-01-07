
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_debug_info {int debug_buffer; } ;
struct inode {int dummy; } ;
struct file {struct stats_debug_info* private_data; } ;


 int kfree (struct stats_debug_info*) ;
 int vfree (int ) ;

__attribute__((used)) static int fnic_stats_debugfs_release(struct inode *inode,
     struct file *file)
{
 struct stats_debug_info *debug = file->private_data;
 vfree(debug->debug_buffer);
 kfree(debug);
 return 0;
}

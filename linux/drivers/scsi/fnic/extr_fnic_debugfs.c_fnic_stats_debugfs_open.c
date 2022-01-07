
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_debug_info {int buf_size; int buffer_len; scalar_t__ debug_buffer; } ;
struct inode {struct fnic* i_private; } ;
struct fnic_stats {int dummy; } ;
struct fnic {struct fnic_stats fnic_stats; } ;
struct file {struct stats_debug_info* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int fnic_get_stats_data (struct stats_debug_info*,struct fnic_stats*) ;
 int kfree (struct stats_debug_info*) ;
 struct stats_debug_info* kzalloc (int,int ) ;
 int memset (void*,int ,int) ;
 scalar_t__ vmalloc (int) ;

__attribute__((used)) static int fnic_stats_debugfs_open(struct inode *inode,
     struct file *file)
{
 struct fnic *fnic = inode->i_private;
 struct fnic_stats *fnic_stats = &fnic->fnic_stats;
 struct stats_debug_info *debug;
 int buf_size = 2 * PAGE_SIZE;

 debug = kzalloc(sizeof(struct stats_debug_info), GFP_KERNEL);
 if (!debug)
  return -ENOMEM;

 debug->debug_buffer = vmalloc(buf_size);
 if (!debug->debug_buffer) {
  kfree(debug);
  return -ENOMEM;
 }

 debug->buf_size = buf_size;
 memset((void *)debug->debug_buffer, 0, buf_size);
 debug->buffer_len = fnic_get_stats_data(debug, fnic_stats);

 file->private_data = debug;

 return 0;
}

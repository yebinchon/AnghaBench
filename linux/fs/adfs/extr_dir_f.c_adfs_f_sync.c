
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct adfs_dir {int nr_buffers; struct buffer_head** bh; } ;


 int EIO ;
 scalar_t__ buffer_req (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;

__attribute__((used)) static int
adfs_f_sync(struct adfs_dir *dir)
{
 int err = 0;
 int i;

 for (i = dir->nr_buffers - 1; i >= 0; i--) {
  struct buffer_head *bh = dir->bh[i];
  sync_dirty_buffer(bh);
  if (buffer_req(bh) && !buffer_uptodate(bh))
   err = -EIO;
 }

 return err;
}

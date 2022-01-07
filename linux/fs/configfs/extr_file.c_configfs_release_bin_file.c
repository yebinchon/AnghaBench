
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct configfs_buffer* private_data; } ;
struct configfs_fragment {int frag_sem; int frag_dead; } ;
struct configfs_buffer {int read_in_progress; int write_in_progress; int needs_read_fill; scalar_t__ bin_buffer_size; int * bin_buffer; int item; TYPE_1__* bin_attr; } ;
struct TYPE_2__ {int (* write ) (int ,int *,scalar_t__) ;} ;


 int configfs_release (struct inode*,struct file*) ;
 int down_read (int *) ;
 int stub1 (int ,int *,scalar_t__) ;
 struct configfs_fragment* to_frag (struct file*) ;
 int up_read (int *) ;
 int vfree (int *) ;

__attribute__((used)) static int configfs_release_bin_file(struct inode *inode, struct file *file)
{
 struct configfs_buffer *buffer = file->private_data;

 buffer->read_in_progress = 0;

 if (buffer->write_in_progress) {
  struct configfs_fragment *frag = to_frag(file);
  buffer->write_in_progress = 0;

  down_read(&frag->frag_sem);
  if (!frag->frag_dead) {

   buffer->bin_attr->write(buffer->item,
     buffer->bin_buffer,
     buffer->bin_buffer_size);
  }
  up_read(&frag->frag_sem);

  vfree(buffer->bin_buffer);
  buffer->bin_buffer = ((void*)0);
  buffer->bin_buffer_size = 0;
  buffer->needs_read_fill = 1;
 }

 configfs_release(inode, file);
 return 0;
}

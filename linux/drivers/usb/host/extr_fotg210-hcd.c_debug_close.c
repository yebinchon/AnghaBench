
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct debug_buffer* private_data; } ;
struct debug_buffer {int output_buf; } ;


 int kfree (struct debug_buffer*) ;
 int vfree (int ) ;

__attribute__((used)) static int debug_close(struct inode *inode, struct file *file)
{
 struct debug_buffer *buf = file->private_data;

 if (buf) {
  vfree(buf->output_buf);
  kfree(buf);
 }

 return 0;
}

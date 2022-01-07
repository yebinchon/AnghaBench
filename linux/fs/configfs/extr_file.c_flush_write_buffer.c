
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct configfs_fragment {int frag_sem; int frag_dead; } ;
struct configfs_buffer {int page; int item; TYPE_1__* attr; } ;
struct TYPE_2__ {int (* store ) (int ,int ,size_t) ;} ;


 int ENOENT ;
 int down_read (int *) ;
 int stub1 (int ,int ,size_t) ;
 struct configfs_fragment* to_frag (struct file*) ;
 int up_read (int *) ;

__attribute__((used)) static int
flush_write_buffer(struct file *file, struct configfs_buffer *buffer, size_t count)
{
 struct configfs_fragment *frag = to_frag(file);
 int res = -ENOENT;

 down_read(&frag->frag_sem);
 if (!frag->frag_dead)
  res = buffer->attr->store(buffer->item, buffer->page, count);
 up_read(&frag->frag_sem);
 return res;
}

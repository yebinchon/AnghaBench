
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_epfile {int read_buffer; } ;
struct ffs_buffer {int dummy; } ;


 struct ffs_buffer* READ_BUFFER_DROP ;
 int kfree (struct ffs_buffer*) ;
 struct ffs_buffer* xchg (int *,struct ffs_buffer*) ;

__attribute__((used)) static void __ffs_epfile_read_buffer_free(struct ffs_epfile *epfile)
{




 struct ffs_buffer *buf = xchg(&epfile->read_buffer, READ_BUFFER_DROP);
 if (buf && buf != READ_BUFFER_DROP)
  kfree(buf);
}

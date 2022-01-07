
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_filp; struct ffs_io_data* private; } ;
struct iov_iter {int dummy; } ;
struct ffs_io_data {int aio; int read; struct iov_iter data; struct ffs_io_data* to_free; int mm; struct kiocb* kiocb; } ;
typedef int ssize_t ;
typedef int io_data ;
struct TYPE_2__ {int mm; } ;


 int EIOCBQUEUED ;
 int ENOMEM ;
 int ENTER () ;
 int GFP_KERNEL ;
 TYPE_1__* current ;
 struct ffs_io_data* dup_iter (struct iov_iter*,struct iov_iter*,int ) ;
 int ffs_aio_cancel ;
 int ffs_epfile_io (int ,struct ffs_io_data*) ;
 int is_sync_kiocb (struct kiocb*) ;
 int kfree (struct ffs_io_data*) ;
 int kiocb_set_cancel_fn (struct kiocb*,int ) ;
 struct ffs_io_data* kzalloc (int,int ) ;
 int memset (struct ffs_io_data*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t ffs_epfile_read_iter(struct kiocb *kiocb, struct iov_iter *to)
{
 struct ffs_io_data io_data, *p = &io_data;
 ssize_t res;

 ENTER();

 if (!is_sync_kiocb(kiocb)) {
  p = kzalloc(sizeof(io_data), GFP_KERNEL);
  if (unlikely(!p))
   return -ENOMEM;
  p->aio = 1;
 } else {
  memset(p, 0, sizeof(*p));
  p->aio = 0;
 }

 p->read = 1;
 p->kiocb = kiocb;
 if (p->aio) {
  p->to_free = dup_iter(&p->data, to, GFP_KERNEL);
  if (!p->to_free) {
   kfree(p);
   return -ENOMEM;
  }
 } else {
  p->data = *to;
  p->to_free = ((void*)0);
 }
 p->mm = current->mm;

 kiocb->private = p;

 if (p->aio)
  kiocb_set_cancel_fn(kiocb, ffs_aio_cancel);

 res = ffs_epfile_io(kiocb->ki_filp, p);
 if (res == -EIOCBQUEUED)
  return res;

 if (p->aio) {
  kfree(p->to_free);
  kfree(p);
 } else {
  *to = p->data;
 }
 return res;
}

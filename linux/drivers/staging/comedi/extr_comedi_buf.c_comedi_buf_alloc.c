
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int mutex; } ;
struct comedi_async {unsigned long prealloc_bufsz; scalar_t__ prealloc_buf; } ;


 int ENOMEM ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int __comedi_buf_alloc (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;
 int __comedi_buf_free (struct comedi_device*,struct comedi_subdevice*) ;
 int lockdep_assert_held (int *) ;

int comedi_buf_alloc(struct comedi_device *dev, struct comedi_subdevice *s,
       unsigned long new_size)
{
 struct comedi_async *async = s->async;

 lockdep_assert_held(&dev->mutex);


 new_size = (new_size + PAGE_SIZE - 1) & PAGE_MASK;


 if (async->prealloc_buf && async->prealloc_bufsz == new_size)
  return 0;


 __comedi_buf_free(dev, s);


 if (new_size) {
  unsigned int n_pages = new_size >> PAGE_SHIFT;

  __comedi_buf_alloc(dev, s, n_pages);

  if (!async->prealloc_buf) {

   __comedi_buf_free(dev, s);
   return -ENOMEM;
  }
 }
 async->prealloc_bufsz = new_size;

 return 0;
}

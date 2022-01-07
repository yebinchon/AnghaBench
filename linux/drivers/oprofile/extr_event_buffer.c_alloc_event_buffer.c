
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 int array_size (scalar_t__,int) ;
 scalar_t__ buffer_pos ;
 scalar_t__ buffer_size ;
 scalar_t__ buffer_watershed ;
 int event_buffer ;
 scalar_t__ oprofile_buffer_size ;
 scalar_t__ oprofile_buffer_watershed ;
 int oprofilefs_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int vmalloc (int ) ;

int alloc_event_buffer(void)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&oprofilefs_lock, flags);
 buffer_size = oprofile_buffer_size;
 buffer_watershed = oprofile_buffer_watershed;
 raw_spin_unlock_irqrestore(&oprofilefs_lock, flags);

 if (buffer_watershed >= buffer_size)
  return -EINVAL;

 buffer_pos = 0;
 event_buffer = vmalloc(array_size(buffer_size, sizeof(unsigned long)));
 if (!event_buffer)
  return -ENOMEM;

 return 0;
}

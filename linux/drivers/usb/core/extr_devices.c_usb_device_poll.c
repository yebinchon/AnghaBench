
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct poll_table_struct {int dummy; } ;
struct file {unsigned int f_version; } ;
typedef int __poll_t ;
struct TYPE_2__ {int count; int wait; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 unsigned int atomic_read (int *) ;
 TYPE_1__ device_event ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t usb_device_poll(struct file *file,
        struct poll_table_struct *wait)
{
 unsigned int event_count;

 poll_wait(file, &device_event.wait, wait);

 event_count = atomic_read(&device_event.count);
 if (file->f_version != event_count) {
  file->f_version = event_count;
  return EPOLLIN | EPOLLRDNORM;
 }

 return 0;
}

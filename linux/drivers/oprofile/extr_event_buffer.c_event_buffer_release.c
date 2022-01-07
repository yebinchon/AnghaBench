
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int __clear_bit_unlock (int ,int *) ;
 int atomic_set (int *,int ) ;
 int buffer_opened ;
 scalar_t__ buffer_pos ;
 int buffer_ready ;
 int dcookie_unregister (int ) ;
 int oprofile_shutdown () ;
 int oprofile_stop () ;

__attribute__((used)) static int event_buffer_release(struct inode *inode, struct file *file)
{
 oprofile_stop();
 oprofile_shutdown();
 dcookie_unregister(file->private_data);
 buffer_pos = 0;
 atomic_set(&buffer_ready, 0);
 __clear_bit_unlock(0, &buffer_opened);
 return 0;
}

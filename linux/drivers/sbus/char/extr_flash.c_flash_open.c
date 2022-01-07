
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int busy; } ;


 int EBUSY ;
 TYPE_1__ flash ;
 int flash_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_and_set_bit (int ,void*) ;

__attribute__((used)) static int
flash_open(struct inode *inode, struct file *file)
{
 mutex_lock(&flash_mutex);
 if (test_and_set_bit(0, (void *)&flash.busy) != 0) {
  mutex_unlock(&flash_mutex);
  return -EBUSY;
 }

 mutex_unlock(&flash_mutex);
 return 0;
}

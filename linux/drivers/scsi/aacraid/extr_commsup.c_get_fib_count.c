
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {struct list_head* next; } ;
struct hw_fib {int dummy; } ;
struct aac_dev {int fib_lock; struct list_head fib_list; TYPE_2__* init; } ;
struct TYPE_3__ {int adapter_fibs_size; } ;
struct TYPE_4__ {TYPE_1__ r7; } ;


 int le32_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int get_fib_count(struct aac_dev *dev)
{
 unsigned int num = 0;
 struct list_head *entry;
 unsigned long flagv;







 num = le32_to_cpu(dev->init->r7.adapter_fibs_size)
   / sizeof(struct hw_fib);
 spin_lock_irqsave(&dev->fib_lock, flagv);
 entry = dev->fib_list.next;
 while (entry != &dev->fib_list) {
  entry = entry->next;
  ++num;
 }
 spin_unlock_irqrestore(&dev->fib_lock, flagv);

 return num;
}

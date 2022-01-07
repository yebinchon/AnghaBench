
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int dummy; } ;


 int GFP_KERNEL ;
 int kfifo_alloc (struct kfifo*,int,int ) ;

__attribute__((used)) static inline int cq_new(struct kfifo *fifo, int size)
{
 return kfifo_alloc(fifo, size * sizeof(void *), GFP_KERNEL);
}

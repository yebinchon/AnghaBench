
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int dummy; } ;
typedef int p ;


 int kfifo_in (struct kfifo*,void*,int) ;

__attribute__((used)) static inline int cq_put(struct kfifo *kfifo, void *p)
{
 return kfifo_in(kfifo, (void *)&p, sizeof(p));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int dummy; } ;
typedef int p ;


 unsigned int kfifo_out (struct kfifo*,void*,int) ;

__attribute__((used)) static inline void *cq_get(struct kfifo *kfifo)
{
 unsigned int sz;
 void *p;

 sz = kfifo_out(kfifo, (void *)&p, sizeof(p));
 if (sz != sizeof(p))
  return ((void*)0);

 return p;
}

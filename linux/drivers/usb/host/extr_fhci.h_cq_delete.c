
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int dummy; } ;


 int kfifo_free (struct kfifo*) ;

__attribute__((used)) static inline void cq_delete(struct kfifo *kfifo)
{
 kfifo_free(kfifo);
}

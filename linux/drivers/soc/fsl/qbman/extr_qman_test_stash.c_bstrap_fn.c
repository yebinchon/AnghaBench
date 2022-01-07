
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstrap {int (* fn ) () ;int started; } ;


 int atomic_inc (int *) ;
 int kthread_should_stop () ;
 int msleep (int) ;
 int stub1 () ;

__attribute__((used)) static int bstrap_fn(void *bs)
{
 struct bstrap *bstrap = bs;
 int err;

 atomic_inc(&bstrap->started);
 err = bstrap->fn();
 if (err)
  return err;
 while (!kthread_should_stop())
  msleep(20);
 return 0;
}

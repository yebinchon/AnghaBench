
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int dummy; } ;
struct anybuss_host {int ind_ab; int wq; struct kfifo* qs; } ;


 size_t ARRAY_SIZE (struct kfifo*) ;
 int HZ ;
 unsigned int atomic_read (int *) ;
 scalar_t__ kthread_should_stop () ;
 int process_qs (struct anybuss_host*) ;
 int process_softint (struct anybuss_host*) ;
 scalar_t__ qs_have_work (struct kfifo*,size_t) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int qthread_fn(void *data)
{
 struct anybuss_host *cd = data;
 struct kfifo *qs = cd->qs;
 size_t nqs = ARRAY_SIZE(cd->qs);
 unsigned int ind_ab;
 while (!kthread_should_stop()) {




  ind_ab = atomic_read(&cd->ind_ab);
  process_qs(cd);
  process_softint(cd);
  wait_event_timeout(cd->wq,
       (atomic_read(&cd->ind_ab) != ind_ab) ||
    qs_have_work(qs, nqs) ||
    kthread_should_stop(),
   HZ);




 }

 return 0;
}

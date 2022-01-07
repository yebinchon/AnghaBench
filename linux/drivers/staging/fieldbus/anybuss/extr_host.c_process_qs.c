
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int dummy; } ;
struct anybuss_host {struct kfifo* qs; } ;


 size_t ARRAY_SIZE (struct kfifo*) ;
 int process_q (struct anybuss_host*,struct kfifo*) ;

__attribute__((used)) static void process_qs(struct anybuss_host *cd)
{
 size_t i;
 struct kfifo *qs = cd->qs;
 size_t nqs = ARRAY_SIZE(cd->qs);

 for (i = 0; i < nqs; i++, qs++)
  process_q(cd, qs);
}

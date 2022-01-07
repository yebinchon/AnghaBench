
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct kfifo {int dummy; } ;
struct ab_task {int result; } ;


 int EINPROGRESS ;
 int kfifo_out_peek (struct kfifo*,struct ab_task**,int) ;

__attribute__((used)) static bool qs_have_work(struct kfifo *qs, size_t num)
{
 size_t i;
 struct ab_task *t;
 int ret;

 for (i = 0; i < num; i++, qs++) {
  ret = kfifo_out_peek(qs, &t, sizeof(t));
  if (ret && (t->result != -EINPROGRESS))
   return 1;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bfa_s {int dummy; } ;


 int bfa_isr_reqq_ack (struct bfa_s*,int) ;
 struct list_head* bfa_reqq (struct bfa_s*,int) ;
 int bfa_reqq_resume (struct bfa_s*,int) ;
 int list_empty (struct list_head*) ;

__attribute__((used)) static inline void
bfa_isr_reqq(struct bfa_s *bfa, int qid)
{
 struct list_head *waitq;

 bfa_isr_reqq_ack(bfa, qid);




 waitq = bfa_reqq(bfa, qid);
 if (!list_empty(waitq))
  bfa_reqq_resume(bfa, qid);
}

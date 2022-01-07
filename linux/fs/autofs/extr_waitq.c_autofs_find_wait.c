
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {scalar_t__ hash; scalar_t__ len; int name; } ;
struct TYPE_2__ {scalar_t__ hash; scalar_t__ len; scalar_t__ name; } ;
struct autofs_wait_queue {TYPE_1__ name; struct autofs_wait_queue* next; } ;
struct autofs_sb_info {struct autofs_wait_queue* queues; } ;


 int memcmp (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static struct autofs_wait_queue *
autofs_find_wait(struct autofs_sb_info *sbi, const struct qstr *qstr)
{
 struct autofs_wait_queue *wq;

 for (wq = sbi->queues; wq; wq = wq->next) {
  if (wq->name.hash == qstr->hash &&
      wq->name.len == qstr->len &&
      wq->name.name &&
      !memcmp(wq->name.name, qstr->name, qstr->len))
   break;
 }
 return wq;
}

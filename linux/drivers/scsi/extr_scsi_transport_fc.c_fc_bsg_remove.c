
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int bsg_remove_queue (struct request_queue*) ;

__attribute__((used)) static void
fc_bsg_remove(struct request_queue *q)
{
 bsg_remove_queue(q);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_request {scalar_t__ view; } ;
struct con3270 {int write; } ;


 int raw3270_request_reset (struct raw3270_request*) ;
 int xchg (int *,struct raw3270_request*) ;

__attribute__((used)) static void
con3270_write_callback(struct raw3270_request *rq, void *data)
{
 raw3270_request_reset(rq);
 xchg(&((struct con3270 *) rq->view)->write, rq);
}

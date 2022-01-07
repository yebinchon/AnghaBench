
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_request {scalar_t__ view; } ;
struct fs3270 {int wait; } ;


 int raw3270_request_reset (struct raw3270_request*) ;
 int wake_up (int *) ;

__attribute__((used)) static void
fs3270_reset_callback(struct raw3270_request *rq, void *data)
{
 struct fs3270 *fp;

 fp = (struct fs3270 *) rq->view;
 raw3270_request_reset(rq);
 wake_up(&fp->wait);
}

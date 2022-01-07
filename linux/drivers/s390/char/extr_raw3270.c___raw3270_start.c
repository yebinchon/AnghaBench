
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {int dummy; } ;
struct raw3270_request {int rc; int list; int ccw; struct raw3270_view* view; } ;
struct raw3270 {int req_queue; int cdev; int flags; } ;


 int RAW3270_FLAGS_BUSY ;
 int ccw_device_start (int ,int *,unsigned long,int ,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int raw3270_get_view (struct raw3270_view*) ;
 int raw3270_put_view (struct raw3270_view*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
__raw3270_start(struct raw3270 *rp, struct raw3270_view *view,
  struct raw3270_request *rq)
{
 rq->view = view;
 raw3270_get_view(view);
 if (list_empty(&rp->req_queue) &&
     !test_bit(RAW3270_FLAGS_BUSY, &rp->flags)) {

  rq->rc = ccw_device_start(rp->cdev, &rq->ccw,
            (unsigned long) rq, 0, 0);
  if (rq->rc) {
   raw3270_put_view(view);
   return rq->rc;
  }
 }
 list_add_tail(&rq->list, &rp->req_queue);
 return 0;
}

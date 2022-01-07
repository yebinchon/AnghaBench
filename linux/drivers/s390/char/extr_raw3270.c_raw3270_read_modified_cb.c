
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw3270_request {TYPE_1__* view; } ;
struct raw3270 {int dummy; } ;
struct TYPE_2__ {struct raw3270* dev; } ;


 int raw3270_size_device (struct raw3270*) ;
 int raw3270_size_device_done (struct raw3270*) ;

__attribute__((used)) static void
raw3270_read_modified_cb(struct raw3270_request *rq, void *data)
{
 struct raw3270 *rp = rq->view->dev;

 raw3270_size_device(rp);
 raw3270_size_device_done(rp);
}

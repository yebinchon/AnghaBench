
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct tape_request {struct tape_device* device; } ;
struct tape_device {int cdev_id; } ;


 int BUG_ON (int) ;
 int DBF_EVENT (int,char*,int ,...) ;
 struct tape_request* from_timer (int ,struct timer_list*,int ) ;
 struct tape_request* request ;
 int tape_cancel_io (struct tape_device*,struct tape_request*) ;
 int timer ;

__attribute__((used)) static void
tape_std_assign_timeout(struct timer_list *t)
{
 struct tape_request * request = from_timer(request, t, timer);
 struct tape_device * device = request->device;
 int rc;

 BUG_ON(!device);

 DBF_EVENT(3, "%08x: Assignment timeout. Device busy.\n",
   device->cdev_id);
 rc = tape_cancel_io(device, request);
 if(rc)
  DBF_EVENT(3, "(%08x): Assign timeout: Cancel failed with rc = "
     "%i\n", device->cdev_id, rc);
}

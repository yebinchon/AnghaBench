
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_med_state_work_data {int state; int work; int device; } ;
struct tape_device {int dummy; } ;
typedef enum tape_medium_state { ____Placeholder_tape_medium_state } tape_medium_state ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct tape_med_state_work_data* kzalloc (int,int ) ;
 int schedule_work (int *) ;
 int tape_get_device (struct tape_device*) ;
 int tape_med_state_work_handler ;

__attribute__((used)) static void
tape_med_state_work(struct tape_device *device, enum tape_medium_state state)
{
 struct tape_med_state_work_data *p;

 p = kzalloc(sizeof(*p), GFP_ATOMIC);
 if (p) {
  INIT_WORK(&p->work, tape_med_state_work_handler);
  p->device = tape_get_device(device);
  p->state = state;
  schedule_work(&p->work);
 }
}

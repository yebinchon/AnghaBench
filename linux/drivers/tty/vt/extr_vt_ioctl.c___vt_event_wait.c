
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_event_wait {int done; } ;


 int vt_event_waitqueue ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static void __vt_event_wait(struct vt_event_wait *vw)
{

 wait_event_interruptible(vt_event_waitqueue, vw->done);
}

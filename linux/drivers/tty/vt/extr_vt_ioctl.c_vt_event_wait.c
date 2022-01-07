
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_event_wait {int dummy; } ;


 int __vt_event_dequeue (struct vt_event_wait*) ;
 int __vt_event_queue (struct vt_event_wait*) ;
 int __vt_event_wait (struct vt_event_wait*) ;

__attribute__((used)) static void vt_event_wait(struct vt_event_wait *vw)
{
 __vt_event_queue(vw);
 __vt_event_wait(vw);
 __vt_event_dequeue(vw);
}

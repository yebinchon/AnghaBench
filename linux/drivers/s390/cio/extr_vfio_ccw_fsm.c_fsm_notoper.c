
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_ccw_private {int state; struct subchannel* sch; } ;
struct subchannel {int dev; } ;
typedef enum vfio_ccw_event { ____Placeholder_vfio_ccw_event } vfio_ccw_event ;


 int SCH_TODO_UNREG ;
 int VFIO_CCW_STATE_NOT_OPER ;
 int VFIO_CCW_TRACE_EVENT (int,char*) ;
 int css_sched_sch_todo (struct subchannel*,int ) ;
 char* dev_name (int *) ;

__attribute__((used)) static void fsm_notoper(struct vfio_ccw_private *private,
   enum vfio_ccw_event event)
{
 struct subchannel *sch = private->sch;

 VFIO_CCW_TRACE_EVENT(2, "notoper");
 VFIO_CCW_TRACE_EVENT(2, dev_name(&sch->dev));





 css_sched_sch_todo(sch, SCH_TODO_UNREG);
 private->state = VFIO_CCW_STATE_NOT_OPER;
}

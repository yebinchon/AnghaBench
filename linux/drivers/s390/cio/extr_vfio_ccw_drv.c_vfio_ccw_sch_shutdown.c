
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dummy; } ;


 int vfio_ccw_sch_quiesce (struct subchannel*) ;

__attribute__((used)) static void vfio_ccw_sch_shutdown(struct subchannel *sch)
{
 vfio_ccw_sch_quiesce(sch);
}

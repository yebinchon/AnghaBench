
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel_id {int sch_no; } ;
struct qdio_irq {int setup_mutex; int * debug_area; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {struct qdio_irq* qdio_data; } ;


 int DBF_DEV_EVENT (int ,struct qdio_irq*,char*) ;
 int DBF_ERR ;
 int DBF_EVENT (char*,int ) ;
 int ENODEV ;
 int ccw_device_get_schid (struct ccw_device*,struct subchannel_id*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qdio_release_memory (struct qdio_irq*) ;

int qdio_free(struct ccw_device *cdev)
{
 struct qdio_irq *irq_ptr = cdev->private->qdio_data;
 struct subchannel_id schid;

 if (!irq_ptr)
  return -ENODEV;

 ccw_device_get_schid(cdev, &schid);
 DBF_EVENT("qfree:%4x", schid.sch_no);
 DBF_DEV_EVENT(DBF_ERR, irq_ptr, "dbf abandoned");
 mutex_lock(&irq_ptr->setup_mutex);

 irq_ptr->debug_area = ((void*)0);
 cdev->private->qdio_data = ((void*)0);
 mutex_unlock(&irq_ptr->setup_mutex);

 qdio_release_memory(irq_ptr);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sch_no; } ;
struct qdio_irq {TYPE_2__ schid; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_3__ {struct qdio_irq* qdio_data; } ;


 int DBF_DEV_EVENT (int ,struct qdio_irq*,char*) ;
 int DBF_ERROR (char*,int,...) ;
 int DBF_INFO ;
 int DEV_STAT_CHN_END ;
 int DEV_STAT_DEV_END ;
 int QDIO_IRQ_STATE_ERR ;
 int QDIO_IRQ_STATE_ESTABLISHED ;
 int qdio_set_state (struct qdio_irq*,int ) ;

__attribute__((used)) static void qdio_establish_handle_irq(struct ccw_device *cdev, int cstat,
          int dstat)
{
 struct qdio_irq *irq_ptr = cdev->private->qdio_data;

 DBF_DEV_EVENT(DBF_INFO, irq_ptr, "qest irq");

 if (cstat)
  goto error;
 if (dstat & ~(DEV_STAT_DEV_END | DEV_STAT_CHN_END))
  goto error;
 if (!(dstat & DEV_STAT_DEV_END))
  goto error;
 qdio_set_state(irq_ptr, QDIO_IRQ_STATE_ESTABLISHED);
 return;

error:
 DBF_ERROR("%4x EQ:error", irq_ptr->schid.sch_no);
 DBF_ERROR("ds: %2x cs:%2x", dstat, cstat);
 qdio_set_state(irq_ptr, QDIO_IRQ_STATE_ERR);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_mport {int dummy; } ;
struct cm_dev {int rx_work; int rx_wq; int mport; } ;


 int queue_work (int ,int *) ;
 scalar_t__ rio_mport_is_running (int ) ;
 int work_pending (int *) ;

__attribute__((used)) static void riocm_inb_msg_event(struct rio_mport *mport, void *dev_id,
    int mbox, int slot)
{
 struct cm_dev *cm = dev_id;

 if (rio_mport_is_running(cm->mport) && !work_pending(&cm->rx_work))
  queue_work(cm->rx_wq, &cm->rx_work);
}

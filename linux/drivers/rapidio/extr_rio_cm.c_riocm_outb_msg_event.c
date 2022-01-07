
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_mport {int dummy; } ;
struct cm_dev {int mport; } ;


 scalar_t__ rio_mport_is_running (int ) ;
 int rio_txcq_handler (struct cm_dev*,int) ;

__attribute__((used)) static void riocm_outb_msg_event(struct rio_mport *mport, void *dev_id,
     int mbox, int slot)
{
 struct cm_dev *cm = dev_id;

 if (cm && rio_mport_is_running(cm->mport))
  rio_txcq_handler(cm, slot);
}

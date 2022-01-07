
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_struct {int irq_requested; int flags; } ;


 int hvc_handle_interrupt ;
 int request_irq (int,int ,int ,char*,struct hvc_struct*) ;

int notifier_add_irq(struct hvc_struct *hp, int irq)
{
 int rc;

 if (!irq) {
  hp->irq_requested = 0;
  return 0;
 }
 rc = request_irq(irq, hvc_handle_interrupt, hp->flags,
   "hvc_console", hp);
 if (!rc)
  hp->irq_requested = 1;
 return rc;
}

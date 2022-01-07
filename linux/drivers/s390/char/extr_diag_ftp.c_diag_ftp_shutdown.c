
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXT_IRQ_CP_SERVICE ;
 int IRQ_SUBCLASS_SERVICE_SIGNAL ;
 int diag_ftp_handler ;
 int irq_subclass_unregister (int ) ;
 int unregister_external_irq (int ,int ) ;

void diag_ftp_shutdown(void)
{
 irq_subclass_unregister(IRQ_SUBCLASS_SERVICE_SIGNAL);
 unregister_external_irq(EXT_IRQ_CP_SERVICE, diag_ftp_handler);
}

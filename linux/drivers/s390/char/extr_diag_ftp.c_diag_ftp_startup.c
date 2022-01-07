
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXT_IRQ_CP_SERVICE ;
 int IRQ_SUBCLASS_SERVICE_SIGNAL ;
 int diag_ftp_handler ;
 int irq_subclass_register (int ) ;
 int register_external_irq (int ,int ) ;

int diag_ftp_startup(void)
{
 int rc;

 rc = register_external_irq(EXT_IRQ_CP_SERVICE, diag_ftp_handler);
 if (rc)
  return rc;

 irq_subclass_register(IRQ_SUBCLASS_SERVICE_SIGNAL);
 return 0;
}

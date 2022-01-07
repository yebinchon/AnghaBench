
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm_scsw {int x; int cc; void* stctl; void* actl; void* fctl; } ;
struct cmd_scsw {int cc; void* stctl; void* actl; void* fctl; } ;
struct TYPE_2__ {struct tm_scsw tm; struct cmd_scsw cmd; } ;
struct irb {TYPE_1__ scsw; } ;


 int FAKE_CMD_IRB ;
 int FAKE_TM_IRB ;
 void* SCSW_ACTL_START_PEND ;
 void* SCSW_FCTL_START_FUNC ;
 void* SCSW_STCTL_STATUS_PEND ;
 int memset (struct irb*,int ,int) ;

__attribute__((used)) static void create_fake_irb(struct irb *irb, int type)
{
 memset(irb, 0, sizeof(*irb));
 if (type == FAKE_CMD_IRB) {
  struct cmd_scsw *scsw = &irb->scsw.cmd;
  scsw->cc = 1;
  scsw->fctl = SCSW_FCTL_START_FUNC;
  scsw->actl = SCSW_ACTL_START_PEND;
  scsw->stctl = SCSW_STCTL_STATUS_PEND;
 } else if (type == FAKE_TM_IRB) {
  struct tm_scsw *scsw = &irb->scsw.tm;
  scsw->x = 1;
  scsw->cc = 1;
  scsw->fctl = SCSW_FCTL_START_FUNC;
  scsw->actl = SCSW_ACTL_START_PEND;
  scsw->stctl = SCSW_STCTL_STATUS_PEND;
 }
}

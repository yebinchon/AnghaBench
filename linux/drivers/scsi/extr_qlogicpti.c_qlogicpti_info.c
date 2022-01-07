
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlogicpti {TYPE_1__* qhost; int qregs; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {int irq; } ;


 int sprintf (char*,char*,int,int ) ;

const char *qlogicpti_info(struct Scsi_Host *host)
{
 static char buf[80];
 struct qlogicpti *qpti = (struct qlogicpti *) host->hostdata;

 sprintf(buf, "PTI Qlogic,ISP SBUS SCSI irq %d regs at %p",
  qpti->qhost->irq, qpti->qregs);
 return buf;
}

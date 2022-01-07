
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int swint; } ;


 int DMACNTRL0 ;
 TYPE_1__* HOSTDATA (struct Scsi_Host*) ;
 int INTEN ;
 int IRQ_HANDLED ;
 int SETPORT (int ,int ) ;

__attribute__((used)) static irqreturn_t swintr(int irqno, void *dev_id)
{
 struct Scsi_Host *shpnt = dev_id;

 HOSTDATA(shpnt)->swint++;

 SETPORT(DMACNTRL0, INTEN);
 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ahc_softc {int flags; TYPE_1__* platform_data; } ;
struct TYPE_2__ {int irq; } ;


 int AHC_EDGE_INTERRUPT ;
 int IRQF_SHARED ;
 int ahc_linux_isr ;
 int request_irq (int ,int ,int,char*,struct ahc_softc*) ;

int
aic7770_map_int(struct ahc_softc *ahc, u_int irq)
{
 int error;
 int shared;

 shared = 0;
 if ((ahc->flags & AHC_EDGE_INTERRUPT) == 0)
  shared = IRQF_SHARED;

 error = request_irq(irq, ahc_linux_isr, shared, "aic7xxx", ahc);
 if (error == 0)
  ahc->platform_data->irq = irq;

 return (-error);
}

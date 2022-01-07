
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ahc_softc {TYPE_2__* dev_softc; TYPE_1__* platform_data; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int irq; } ;


 int IRQF_SHARED ;
 int ahc_linux_isr ;
 int request_irq (int ,int ,int ,char*,struct ahc_softc*) ;

int
ahc_pci_map_int(struct ahc_softc *ahc)
{
 int error;

 error = request_irq(ahc->dev_softc->irq, ahc_linux_isr,
       IRQF_SHARED, "aic7xxx", ahc);
 if (error == 0)
  ahc->platform_data->irq = ahc->dev_softc->irq;

 return (-error);
}

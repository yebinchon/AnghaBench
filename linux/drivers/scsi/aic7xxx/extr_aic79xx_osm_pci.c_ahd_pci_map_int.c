
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ahd_softc {TYPE_2__* dev_softc; TYPE_1__* platform_data; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int irq; } ;


 int IRQF_SHARED ;
 int ahd_linux_isr ;
 int request_irq (int ,int ,int ,char*,struct ahd_softc*) ;

int
ahd_pci_map_int(struct ahd_softc *ahd)
{
 int error;

 error = request_irq(ahd->dev_softc->irq, ahd_linux_isr,
       IRQF_SHARED, "aic79xx", ahd);
 if (!error)
  ahd->platform_data->irq = ahd->dev_softc->irq;

 return (-error);
}

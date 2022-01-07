
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_nci_spi_phy {int irq_active; TYPE_1__* spi_dev; TYPE_2__* ndlc; int gpiod_reset; } ;
struct TYPE_4__ {scalar_t__ powered; } ;
struct TYPE_3__ {int irq; } ;


 int enable_irq (int ) ;
 int gpiod_set_value (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int st_nci_spi_enable(void *phy_id)
{
 struct st_nci_spi_phy *phy = phy_id;

 gpiod_set_value(phy->gpiod_reset, 0);
 usleep_range(10000, 15000);
 gpiod_set_value(phy->gpiod_reset, 1);
 usleep_range(80000, 85000);

 if (phy->ndlc->powered == 0 && phy->irq_active == 0) {
  enable_irq(phy->spi_dev->irq);
  phy->irq_active = 1;
 }

 return 0;
}

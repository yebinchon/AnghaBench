
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_nci_spi_phy {int irq_active; TYPE_1__* spi_dev; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq_nosync (int ) ;

__attribute__((used)) static void st_nci_spi_disable(void *phy_id)
{
 struct st_nci_spi_phy *phy = phy_id;

 disable_irq_nosync(phy->spi_dev->irq);
 phy->irq_active = 0;
}

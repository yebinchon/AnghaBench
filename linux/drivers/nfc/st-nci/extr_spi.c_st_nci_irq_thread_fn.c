
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_nci_spi_phy {TYPE_1__* ndlc; struct spi_device* spi_dev; } ;
struct spi_device {int irq; int dev; } ;
struct sk_buff {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int powered; scalar_t__ hard_fault; } ;


 int EBADMSG ;
 int ENOMEM ;
 int EREMOTEIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WARN_ON_ONCE (int) ;
 int dev_dbg (int *,char*) ;
 int ndlc_recv (TYPE_1__*,struct sk_buff*) ;
 int st_nci_spi_disable (struct st_nci_spi_phy*) ;
 int st_nci_spi_read (struct st_nci_spi_phy*,struct sk_buff**) ;

__attribute__((used)) static irqreturn_t st_nci_irq_thread_fn(int irq, void *phy_id)
{
 struct st_nci_spi_phy *phy = phy_id;
 struct spi_device *dev;
 struct sk_buff *skb = ((void*)0);
 int r;

 if (!phy || !phy->ndlc || irq != phy->spi_dev->irq) {
  WARN_ON_ONCE(1);
  return IRQ_NONE;
 }

 dev = phy->spi_dev;
 dev_dbg(&dev->dev, "IRQ\n");

 if (phy->ndlc->hard_fault)
  return IRQ_HANDLED;

 if (!phy->ndlc->powered) {
  st_nci_spi_disable(phy);
  return IRQ_HANDLED;
 }

 r = st_nci_spi_read(phy, &skb);
 if (r == -EREMOTEIO || r == -ENOMEM || r == -EBADMSG)
  return IRQ_HANDLED;

 ndlc_recv(phy->ndlc, skb);

 return IRQ_HANDLED;
}

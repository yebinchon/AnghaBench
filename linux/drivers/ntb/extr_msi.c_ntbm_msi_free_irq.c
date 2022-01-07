
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int dev; } ;
struct msi_desc {int * write_msi_msg_data; int * write_msi_msg; } ;


 int WARN_ON (int ) ;
 int devm_free_irq (int *,unsigned int,void*) ;
 int devres_destroy (int *,int ,int ,struct msi_desc*) ;
 struct msi_desc* irq_get_msi_desc (unsigned int) ;
 int ntbm_msi_callback_match ;
 int ntbm_msi_callback_release ;

void ntbm_msi_free_irq(struct ntb_dev *ntb, unsigned int irq, void *dev_id)
{
 struct msi_desc *entry = irq_get_msi_desc(irq);

 entry->write_msi_msg = ((void*)0);
 entry->write_msi_msg_data = ((void*)0);

 WARN_ON(devres_destroy(&ntb->dev, ntbm_msi_callback_release,
          ntbm_msi_callback_match, entry));

 devm_free_irq(&ntb->dev, irq, dev_id);
}

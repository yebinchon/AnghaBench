
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pcie_port {int lock; int msi_irq_in_use; } ;
struct irq_domain {struct mtk_pcie_port* host_data; } ;


 int ENOSPC ;
 unsigned long MTK_MSI_IRQS_NUM ;
 int WARN_ON (int) ;
 int __set_bit (unsigned long,int ) ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;
 int handle_edge_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,unsigned long,int *,struct mtk_pcie_port*,int ,int *,int *) ;
 int mtk_msi_bottom_irq_chip ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mtk_pcie_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
         unsigned int nr_irqs, void *args)
{
 struct mtk_pcie_port *port = domain->host_data;
 unsigned long bit;

 WARN_ON(nr_irqs != 1);
 mutex_lock(&port->lock);

 bit = find_first_zero_bit(port->msi_irq_in_use, MTK_MSI_IRQS_NUM);
 if (bit >= MTK_MSI_IRQS_NUM) {
  mutex_unlock(&port->lock);
  return -ENOSPC;
 }

 __set_bit(bit, port->msi_irq_in_use);

 mutex_unlock(&port->lock);

 irq_domain_set_info(domain, virq, bit, &mtk_msi_bottom_irq_chip,
       domain->host_data, handle_edge_irq,
       ((void*)0), ((void*)0));

 return 0;
}

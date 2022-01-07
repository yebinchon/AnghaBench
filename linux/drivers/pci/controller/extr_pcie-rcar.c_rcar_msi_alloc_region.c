
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_msi {int lock; int used; } ;


 int INT_PCI_MSI_NR ;
 int bitmap_find_free_region (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int order_base_2 (int) ;

__attribute__((used)) static int rcar_msi_alloc_region(struct rcar_msi *chip, int no_irqs)
{
 int msi;

 mutex_lock(&chip->lock);
 msi = bitmap_find_free_region(chip->used, INT_PCI_MSI_NR,
          order_base_2(no_irqs));
 mutex_unlock(&chip->lock);

 return msi;
}

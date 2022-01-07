
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_msi {int lock; int used; } ;


 int ENOSPC ;
 int INT_PCI_MSI_NR ;
 int find_first_zero_bit (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int rcar_msi_alloc(struct rcar_msi *chip)
{
 int msi;

 mutex_lock(&chip->lock);

 msi = find_first_zero_bit(chip->used, INT_PCI_MSI_NR);
 if (msi < INT_PCI_MSI_NR)
  set_bit(msi, chip->used);
 else
  msi = -ENOSPC;

 mutex_unlock(&chip->lock);

 return msi;
}

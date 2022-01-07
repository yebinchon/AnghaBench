
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_msi {int lock; int used; } ;


 int clear_bit (unsigned long,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void rcar_msi_free(struct rcar_msi *chip, unsigned long irq)
{
 mutex_lock(&chip->lock);
 clear_bit(irq, chip->used);
 mutex_unlock(&chip->lock);
}

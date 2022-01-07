
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int queue; int status; scalar_t__ actual_length; } ;
struct spi_device {int master; } ;
struct mpc52xx_psc_spi {int lock; int work; int queue; } ;


 int EINPROGRESS ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 struct mpc52xx_psc_spi* spi_master_get_devdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mpc52xx_psc_spi_transfer(struct spi_device *spi,
  struct spi_message *m)
{
 struct mpc52xx_psc_spi *mps = spi_master_get_devdata(spi->master);
 unsigned long flags;

 m->actual_length = 0;
 m->status = -EINPROGRESS;

 spin_lock_irqsave(&mps->lock, flags);
 list_add_tail(&m->queue, &mps->queue);
 schedule_work(&mps->work);
 spin_unlock_irqrestore(&mps->lock, flags);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spidev_data {int spi_lock; struct spi_device* spi; } ;
struct spi_message {int actual_length; } ;
struct spi_device {int dummy; } ;
typedef int ssize_t ;


 int ESHUTDOWN ;
 int spi_sync (struct spi_device*,struct spi_message*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static ssize_t
spidev_sync(struct spidev_data *spidev, struct spi_message *message)
{
 int status;
 struct spi_device *spi;

 spin_lock_irq(&spidev->spi_lock);
 spi = spidev->spi;
 spin_unlock_irq(&spidev->spi_lock);

 if (spi == ((void*)0))
  status = -ESHUTDOWN;
 else
  status = spi_sync(spi, message);

 if (status == 0)
  status = message->actual_length;

 return status;
}

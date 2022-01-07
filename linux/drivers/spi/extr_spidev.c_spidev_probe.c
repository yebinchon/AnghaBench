
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spidev_data {int speed_hz; int device_entry; int devt; int buf_lock; int spi_lock; struct spi_device* spi; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct spi_device {int max_speed_hz; TYPE_2__ dev; int chip_select; TYPE_1__* master; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int bus_num; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MKDEV (int ,unsigned long) ;
 unsigned long N_SPI_MINORS ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int SPIDEV_MAJOR ;
 int WARN (int,char*,scalar_t__) ;
 int dev_dbg (TYPE_2__*,char*) ;
 struct device* device_create (int ,TYPE_2__*,int ,struct spidev_data*,char*,int ,int ) ;
 int device_list ;
 int device_list_lock ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;
 int kfree (struct spidev_data*) ;
 struct spidev_data* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int minors ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ of_device_is_compatible (scalar_t__,char*) ;
 int set_bit (unsigned long,int ) ;
 int spi_set_drvdata (struct spi_device*,struct spidev_data*) ;
 int spidev_class ;
 int spidev_probe_acpi (struct spi_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int spidev_probe(struct spi_device *spi)
{
 struct spidev_data *spidev;
 int status;
 unsigned long minor;






 WARN(spi->dev.of_node &&
      of_device_is_compatible(spi->dev.of_node, "spidev"),
      "%pOF: buggy DT: spidev listed directly in DT\n", spi->dev.of_node);

 spidev_probe_acpi(spi);


 spidev = kzalloc(sizeof(*spidev), GFP_KERNEL);
 if (!spidev)
  return -ENOMEM;


 spidev->spi = spi;
 spin_lock_init(&spidev->spi_lock);
 mutex_init(&spidev->buf_lock);

 INIT_LIST_HEAD(&spidev->device_entry);




 mutex_lock(&device_list_lock);
 minor = find_first_zero_bit(minors, N_SPI_MINORS);
 if (minor < N_SPI_MINORS) {
  struct device *dev;

  spidev->devt = MKDEV(SPIDEV_MAJOR, minor);
  dev = device_create(spidev_class, &spi->dev, spidev->devt,
        spidev, "spidev%d.%d",
        spi->master->bus_num, spi->chip_select);
  status = PTR_ERR_OR_ZERO(dev);
 } else {
  dev_dbg(&spi->dev, "no minor number available!\n");
  status = -ENODEV;
 }
 if (status == 0) {
  set_bit(minor, minors);
  list_add(&spidev->device_entry, &device_list);
 }
 mutex_unlock(&device_list_lock);

 spidev->speed_hz = spi->max_speed_hz;

 if (status == 0)
  spi_set_drvdata(spi, spidev);
 else
  kfree(spidev);

 return status;
}

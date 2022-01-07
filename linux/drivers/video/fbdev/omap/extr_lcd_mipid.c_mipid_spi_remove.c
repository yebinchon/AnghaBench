
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct mipid_device {int panel; } ;


 struct mipid_device* dev_get_drvdata (int *) ;
 int kfree (struct mipid_device*) ;
 int mipid_disable (int *) ;

__attribute__((used)) static int mipid_spi_remove(struct spi_device *spi)
{
 struct mipid_device *md = dev_get_drvdata(&spi->dev);

 mipid_disable(&md->panel);
 kfree(md);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; int mode; } ;
struct mipid_device {int panel; struct spi_device* spi; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SPI_MODE_0 ;
 int dev_err (int *,char*) ;
 int dev_set_drvdata (int *,struct mipid_device*) ;
 struct mipid_device* kzalloc (int,int ) ;
 int mipid_detect (struct mipid_device*) ;
 int mipid_panel ;
 int omapfb_register_panel (int *) ;

__attribute__((used)) static int mipid_spi_probe(struct spi_device *spi)
{
 struct mipid_device *md;
 int r;

 md = kzalloc(sizeof(*md), GFP_KERNEL);
 if (md == ((void*)0)) {
  dev_err(&spi->dev, "out of memory\n");
  return -ENOMEM;
 }

 spi->mode = SPI_MODE_0;
 md->spi = spi;
 dev_set_drvdata(&spi->dev, md);
 md->panel = mipid_panel;

 r = mipid_detect(md);
 if (r < 0)
  return r;

 omapfb_register_panel(&md->panel);

 return 0;
}

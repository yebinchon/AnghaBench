
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct ad2s1210_state {int * gpios; struct spi_device* sdev; } ;
struct TYPE_3__ {int name; int flags; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int ,int) ;
 int devm_gpiod_get (int *,int ,int ) ;
 TYPE_1__* gpios ;

__attribute__((used)) static int ad2s1210_setup_gpios(struct ad2s1210_state *st)
{
 struct spi_device *spi = st->sdev;
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(gpios); i++) {
  st->gpios[i] = devm_gpiod_get(&spi->dev, gpios[i].name,
           gpios[i].flags);
  if (IS_ERR(st->gpios[i])) {
   ret = PTR_ERR(st->gpios[i]);
   dev_err(&spi->dev,
    "ad2s1210: failed to request %s GPIO: %d\n",
    gpios[i].name, ret);
   return ret;
  }
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq24257_device {int * pg; int dev; } ;


 int BQ24257_PG_GPIO ;
 int EPROBE_DEFER ;
 int GPIOD_IN ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int desc_to_gpio (int *) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int * devm_gpiod_get_optional (int ,int ,int ) ;

__attribute__((used)) static void bq24257_pg_gpio_probe(struct bq24257_device *bq)
{
 bq->pg = devm_gpiod_get_optional(bq->dev, BQ24257_PG_GPIO, GPIOD_IN);

 if (PTR_ERR(bq->pg) == -EPROBE_DEFER) {
  dev_info(bq->dev, "probe retry requested for PG pin\n");
  return;
 } else if (IS_ERR(bq->pg)) {
  dev_err(bq->dev, "error probing PG pin\n");
  bq->pg = ((void*)0);
  return;
 }

 if (bq->pg)
  dev_dbg(bq->dev, "probed PG pin = %d\n", desc_to_gpio(bq->pg));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdio_func {int num; int dev; TYPE_1__* card; } ;
struct sdio_device_id {int dummy; } ;
struct hwbus_priv {TYPE_2__* pdata; int core; struct sdio_func* func; } ;
struct TYPE_4__ {int have_5ghz; int sdd_file; int macaddr; int ref_clk; } ;
struct TYPE_3__ {int quirks; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MMC_QUIRK_LENIENT_FN0 ;
 int cw1200_core_probe (int *,struct hwbus_priv*,int *,int *,int ,int ,int ,int ) ;
 int cw1200_sdio_hwbus_ops ;
 int cw1200_sdio_irq_subscribe (struct hwbus_priv*) ;
 int cw1200_sdio_irq_unsubscribe (struct hwbus_priv*) ;
 TYPE_2__* global_plat_data ;
 int kfree (struct hwbus_priv*) ;
 struct hwbus_priv* kzalloc (int,int ) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 int sdio_enable_func (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_set_drvdata (struct sdio_func*,struct hwbus_priv*) ;

__attribute__((used)) static int cw1200_sdio_probe(struct sdio_func *func,
        const struct sdio_device_id *id)
{
 struct hwbus_priv *self;
 int status;

 pr_info("cw1200_wlan_sdio: Probe called\n");


 if (func->num != 0x01)
  return -ENODEV;

 self = kzalloc(sizeof(*self), GFP_KERNEL);
 if (!self) {
  pr_err("Can't allocate SDIO hwbus_priv.\n");
  return -ENOMEM;
 }

 func->card->quirks |= MMC_QUIRK_LENIENT_FN0;

 self->pdata = global_plat_data;
 self->func = func;
 sdio_set_drvdata(func, self);
 sdio_claim_host(func);
 sdio_enable_func(func);
 sdio_release_host(func);

 status = cw1200_sdio_irq_subscribe(self);

 status = cw1200_core_probe(&cw1200_sdio_hwbus_ops,
       self, &func->dev, &self->core,
       self->pdata->ref_clk,
       self->pdata->macaddr,
       self->pdata->sdd_file,
       self->pdata->have_5ghz);
 if (status) {
  cw1200_sdio_irq_unsubscribe(self);
  sdio_claim_host(func);
  sdio_disable_func(func);
  sdio_release_host(func);
  sdio_set_drvdata(func, ((void*)0));
  kfree(self);
 }

 return status;
}

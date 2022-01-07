
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_pcmcia_socket {TYPE_1__* stat; } ;
struct arcom_pcmcia_pdata {int pwr_gpio; int rdy_gpio; int cd_gpio; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {char* name; int gpio; } ;


 size_t SOC_STAT_CD ;
 size_t SOC_STAT_RDY ;
 TYPE_2__* arcom_pcmcia_dev ;
 int dev_err (int *,char*) ;
 scalar_t__ gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_request (int ,char*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct arcom_pcmcia_pdata* viper_get_pdata () ;

__attribute__((used)) static int viper_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 struct arcom_pcmcia_pdata *pdata = viper_get_pdata();
 unsigned long flags;

 skt->stat[SOC_STAT_CD].gpio = pdata->cd_gpio;
 skt->stat[SOC_STAT_CD].name = "PCMCIA_CD";
 skt->stat[SOC_STAT_RDY].gpio = pdata->rdy_gpio;
 skt->stat[SOC_STAT_RDY].name = "CF ready";

 if (gpio_request(pdata->pwr_gpio, "CF power"))
  goto err_request_pwr;

 local_irq_save(flags);

 if (gpio_direction_output(pdata->pwr_gpio, 0)) {
  local_irq_restore(flags);
  goto err_dir;
 }

 local_irq_restore(flags);

 return 0;

err_dir:
 gpio_free(pdata->pwr_gpio);
err_request_pwr:
 dev_err(&arcom_pcmcia_dev->dev, "Failed to setup PCMCIA GPIOs\n");
 return -1;
}

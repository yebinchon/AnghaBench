
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ status; } ;
struct spi_slave_system_control_priv {int finished; TYPE_2__* spi; int cmd; TYPE_1__ msg; } ;
struct TYPE_4__ {int dev; } ;






 int PM_SUSPEND_MEM ;
 int be16_to_cpu (int ) ;
 int complete (int *) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int kernel_halt () ;
 int kernel_power_off () ;
 int kernel_restart (int *) ;
 int pm_suspend (int ) ;
 int spi_slave_system_control_submit (struct spi_slave_system_control_priv*) ;

__attribute__((used)) static void spi_slave_system_control_complete(void *arg)
{
 struct spi_slave_system_control_priv *priv = arg;
 u16 cmd;
 int ret;

 if (priv->msg.status)
  goto terminate;

 cmd = be16_to_cpu(priv->cmd);
 switch (cmd) {
 case 129:
  dev_info(&priv->spi->dev, "Rebooting system...\n");
  kernel_restart(((void*)0));
  break;

 case 130:
  dev_info(&priv->spi->dev, "Powering off system...\n");
  kernel_power_off();
  break;

 case 131:
  dev_info(&priv->spi->dev, "Halting system...\n");
  kernel_halt();
  break;

 case 128:
  dev_info(&priv->spi->dev, "Suspending system...\n");
  pm_suspend(PM_SUSPEND_MEM);
  break;

 default:
  dev_warn(&priv->spi->dev, "Unknown command 0x%x\n", cmd);
  break;
 }

 ret = spi_slave_system_control_submit(priv);
 if (ret)
  goto terminate;

 return;

terminate:
 dev_info(&priv->spi->dev, "Terminating\n");
 complete(&priv->finished);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct soc_pcmcia_socket {int dummy; } ;
struct arcom_pcmcia_pdata {int pwr_gpio; int (* reset ) (int) ;} ;
struct TYPE_4__ {int flags; int Vcc; } ;
typedef TYPE_1__ socket_state_t ;
struct TYPE_5__ {int dev; } ;


 int SS_RESET ;
 TYPE_3__* arcom_pcmcia_dev ;
 int dev_err (int *,char*,int) ;
 int gpio_set_value (int ,int) ;
 int stub1 (int) ;
 struct arcom_pcmcia_pdata* viper_get_pdata () ;

__attribute__((used)) static int viper_pcmcia_configure_socket(struct soc_pcmcia_socket *skt,
      const socket_state_t *state)
{
 struct arcom_pcmcia_pdata *pdata = viper_get_pdata();


 pdata->reset(state->flags & SS_RESET);


 switch (state->Vcc) {
 case 0:
  gpio_set_value(pdata->pwr_gpio, 0);
  break;
 case 33:
  gpio_set_value(pdata->pwr_gpio, 1);
  break;
 default:
  dev_err(&arcom_pcmcia_dev->dev, "Unsupported Vcc:%d\n", state->Vcc);
  return -1;
 }

 return 0;
}

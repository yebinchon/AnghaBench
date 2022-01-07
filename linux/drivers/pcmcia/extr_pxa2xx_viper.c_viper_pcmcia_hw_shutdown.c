
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;
struct arcom_pcmcia_pdata {int pwr_gpio; } ;


 int gpio_free (int ) ;
 struct arcom_pcmcia_pdata* viper_get_pdata () ;

__attribute__((used)) static void viper_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 struct arcom_pcmcia_pdata *pdata = viper_get_pdata();

 gpio_free(pdata->pwr_gpio);
}

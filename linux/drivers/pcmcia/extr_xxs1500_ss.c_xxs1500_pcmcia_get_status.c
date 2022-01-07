
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dummy; } ;


 int GPIO_BATTDEAD ;
 int GPIO_BATTWARN ;
 int GPIO_CDA ;
 int GPIO_CDB ;
 int GPIO_POWER ;
 int GPIO_RESET ;
 int GPIO_VSH ;
 int GPIO_VSL ;
 unsigned int SS_3VCARD ;
 unsigned int SS_BATDEAD ;
 unsigned int SS_BATWARN ;
 unsigned int SS_DETECT ;
 unsigned int SS_POWERON ;
 unsigned int SS_READY ;
 unsigned int SS_RESET ;
 unsigned int SS_XVCARD ;
 scalar_t__ gpio_get_value (int ) ;

__attribute__((used)) static int xxs1500_pcmcia_get_status(struct pcmcia_socket *skt,
         unsigned int *value)
{
 unsigned int status;
 int i;

 status = 0;


 if (!gpio_get_value(GPIO_CDA) && !gpio_get_value(GPIO_CDB))
  status |= SS_DETECT;


 i = (!!gpio_get_value(GPIO_VSL)) | ((!!gpio_get_value(GPIO_VSH)) << 1);

 switch (i) {
 case 0:
 case 1:
 case 2:
  status |= SS_3VCARD;
  break;
 case 3:
 default:
  status |= SS_XVCARD;
 }


 status |= gpio_get_value(GPIO_POWER) ? 0 : SS_POWERON;


 status |= gpio_get_value(GPIO_RESET) ? SS_RESET : SS_READY;


 status |= gpio_get_value(GPIO_BATTDEAD) ? 0 : SS_BATDEAD;
 status |= gpio_get_value(GPIO_BATTWARN) ? 0 : SS_BATWARN;

 *value = status;

 return 0;
}

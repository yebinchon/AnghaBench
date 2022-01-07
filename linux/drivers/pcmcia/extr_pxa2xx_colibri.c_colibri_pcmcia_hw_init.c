
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* pci_irq; } ;
struct soc_pcmcia_socket {TYPE_2__* stat; TYPE_1__ socket; } ;
struct TYPE_8__ {int gpio; } ;
struct TYPE_7__ {char* name; void* irq; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 size_t DETECT ;
 size_t READY ;
 size_t SOC_STAT_CD ;
 TYPE_3__* colibri_pcmcia_gpios ;
 int gpio_request_array (TYPE_3__*,int ) ;
 void* gpio_to_irq (int ) ;

__attribute__((used)) static int colibri_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 int ret;

 ret = gpio_request_array(colibri_pcmcia_gpios,
    ARRAY_SIZE(colibri_pcmcia_gpios));
 if (ret)
  goto err1;

 skt->socket.pci_irq = gpio_to_irq(colibri_pcmcia_gpios[READY].gpio);
 skt->stat[SOC_STAT_CD].irq = gpio_to_irq(colibri_pcmcia_gpios[DETECT].gpio);
 skt->stat[SOC_STAT_CD].name = "PCMCIA CD";

err1:
 return ret;
}

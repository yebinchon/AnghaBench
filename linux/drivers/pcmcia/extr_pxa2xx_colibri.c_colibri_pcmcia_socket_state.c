
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {int dummy; } ;
struct pcmcia_state {int detect; int ready; int bvd1; int bvd2; int vs_3v; scalar_t__ vs_Xv; } ;
struct TYPE_2__ {int gpio; } ;


 size_t BVD1 ;
 size_t BVD2 ;
 size_t DETECT ;
 size_t READY ;
 TYPE_1__* colibri_pcmcia_gpios ;
 int gpio_get_value (int ) ;

__attribute__((used)) static void colibri_pcmcia_socket_state(struct soc_pcmcia_socket *skt,
     struct pcmcia_state *state)
{

 state->detect = !!gpio_get_value(colibri_pcmcia_gpios[DETECT].gpio);
 state->ready = !!gpio_get_value(colibri_pcmcia_gpios[READY].gpio);
 state->bvd1 = !!gpio_get_value(colibri_pcmcia_gpios[BVD1].gpio);
 state->bvd2 = !!gpio_get_value(colibri_pcmcia_gpios[BVD2].gpio);
 state->vs_3v = 1;
 state->vs_Xv = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct soc_pcmcia_socket {int dummy; } ;
struct TYPE_4__ {int Vcc; int Vpp; int flags; } ;
typedef TYPE_1__ socket_state_t ;
struct TYPE_5__ {int gpio; } ;


 size_t PPEN ;
 size_t RESET ;
 int SS_RESET ;
 TYPE_2__* colibri_pcmcia_gpios ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int
colibri_pcmcia_configure_socket(struct soc_pcmcia_socket *skt,
    const socket_state_t *state)
{
 gpio_set_value(colibri_pcmcia_gpios[PPEN].gpio,
   !(state->Vcc == 33 && state->Vpp < 50));
 gpio_set_value(colibri_pcmcia_gpios[RESET].gpio,
   state->flags & SS_RESET);
 return 0;
}

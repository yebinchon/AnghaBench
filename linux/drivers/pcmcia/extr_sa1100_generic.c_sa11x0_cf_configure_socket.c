
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct soc_pcmcia_socket {int vcc; } ;
struct TYPE_3__ {int Vcc; } ;
typedef TYPE_1__ socket_state_t ;


 int soc_pcmcia_regulator_set (struct soc_pcmcia_socket*,int *,int ) ;

__attribute__((used)) static int sa11x0_cf_configure_socket(struct soc_pcmcia_socket *skt,
 const socket_state_t *state)
{
 return soc_pcmcia_regulator_set(skt, &skt->vcc, state->Vcc);
}

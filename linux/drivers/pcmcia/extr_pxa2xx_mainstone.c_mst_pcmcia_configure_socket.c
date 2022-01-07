
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct soc_pcmcia_socket {int driver_data; } ;
struct TYPE_3__ {int Vpp; int Vcc; } ;
typedef TYPE_1__ socket_state_t ;


 int max1600_configure (int ,int ,int ) ;

__attribute__((used)) static int mst_pcmcia_configure_socket(struct soc_pcmcia_socket *skt,
           const socket_state_t *state)
{
 return max1600_configure(skt->driver_data, state->Vcc, state->Vpp);
}

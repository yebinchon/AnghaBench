
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct soc_pcmcia_socket {struct max1600* driver_data; } ;
struct max1600 {int dummy; } ;
struct TYPE_4__ {int Vpp; int Vcc; } ;
typedef TYPE_1__ socket_state_t ;


 int max1600_configure (struct max1600*,int ,int ) ;
 int sa1111_pcmcia_configure_socket (struct soc_pcmcia_socket*,TYPE_1__ const*) ;

__attribute__((used)) static int
neponset_pcmcia_configure_socket(struct soc_pcmcia_socket *skt, const socket_state_t *state)
{
 struct max1600 *m = skt->driver_data;
 int ret;

 ret = sa1111_pcmcia_configure_socket(skt, state);
 if (ret == 0)
  ret = max1600_configure(m, state->Vcc, state->Vpp);

 return ret;
}

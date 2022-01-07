
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct soc_pcmcia_socket {int nr; struct max1600* driver_data; } ;
struct pcmcia_state {int vs_Xv; int vs_3v; } ;
struct max1600 {int dummy; } ;
struct TYPE_4__ {int Vcc; int Vpp; } ;
typedef TYPE_1__ socket_state_t ;


 int max1600_configure (struct max1600*,int,int) ;
 int mdelay (int) ;
 int sa1111_pcmcia_configure_socket (struct soc_pcmcia_socket*,TYPE_1__ const*) ;
 int sa1111_pcmcia_socket_state (struct soc_pcmcia_socket*,struct pcmcia_state*) ;

__attribute__((used)) static int
lubbock_pcmcia_configure_socket(struct soc_pcmcia_socket *skt,
    const socket_state_t *state)
{
 struct max1600 *m = skt->driver_data;
 int ret = 0;
 again:
 switch (skt->nr) {
 case 0:
 case 1:
  break;

 default:
  ret = -1;
 }

 if (ret == 0)
  ret = sa1111_pcmcia_configure_socket(skt, state);
 if (ret == 0)
  ret = max1600_configure(m, state->Vcc, state->Vpp);


 if (ret == 0 && state->Vcc == 33) {
  struct pcmcia_state new_state;
  mdelay(3);

  sa1111_pcmcia_socket_state(skt, &new_state);

  if (!new_state.vs_3v && !new_state.vs_Xv) {



   max1600_configure(m, 0, 0);




   mdelay(100);







   ((socket_state_t *)state)->Vcc = 50;
   ((socket_state_t *)state)->Vpp = 50;
   goto again;
  }
 }


 return ret;
}

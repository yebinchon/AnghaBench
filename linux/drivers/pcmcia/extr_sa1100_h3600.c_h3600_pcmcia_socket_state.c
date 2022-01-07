
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;
struct pcmcia_state {scalar_t__ vs_Xv; scalar_t__ vs_3v; scalar_t__ bvd2; scalar_t__ bvd1; } ;



__attribute__((used)) static void
h3600_pcmcia_socket_state(struct soc_pcmcia_socket *skt, struct pcmcia_state *state)
{
 state->bvd1 = 0;
 state->bvd2 = 0;
 state->vs_3v = 0;
 state->vs_Xv = 0;
}

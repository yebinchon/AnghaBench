
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;
struct pcmcia_state {int detect; int vs_3v; scalar_t__ vs_Xv; } ;



__attribute__((used)) static void palmld_pcmcia_socket_state(struct soc_pcmcia_socket *skt,
     struct pcmcia_state *state)
{
 state->detect = 1;
 state->vs_3v = 1;
 state->vs_Xv = 0;
}

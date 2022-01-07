
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;
struct pcmcia_state {scalar_t__ vs_Xv; scalar_t__ vs_3v; } ;



__attribute__((used)) static void cmx270_pcmcia_socket_state(struct soc_pcmcia_socket *skt,
           struct pcmcia_state *state)
{
 state->vs_3v = 0;
 state->vs_Xv = 0;
}

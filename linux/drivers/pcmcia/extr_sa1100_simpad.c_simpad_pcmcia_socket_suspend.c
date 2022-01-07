
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 int PCMCIA_RESET ;
 int simpad_set_cs3_bit (int ) ;

__attribute__((used)) static void simpad_pcmcia_socket_suspend(struct soc_pcmcia_socket *skt)
{
 simpad_set_cs3_bit(PCMCIA_RESET);
}

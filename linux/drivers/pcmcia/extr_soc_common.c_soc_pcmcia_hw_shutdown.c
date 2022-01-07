
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int stat; } ;


 int ARRAY_SIZE (int ) ;
 int __soc_pcmcia_hw_shutdown (struct soc_pcmcia_socket*,int ) ;

__attribute__((used)) static void soc_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 __soc_pcmcia_hw_shutdown(skt, ARRAY_SIZE(skt->stat));
}

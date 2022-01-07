
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int state; } ;


 int SOCKET_CARDBUS ;
 int cb_alloc (struct pcmcia_socket*) ;
 int cb_free (struct pcmcia_socket*) ;

__attribute__((used)) static int socket_complete_resume(struct pcmcia_socket *skt)
{
 int ret = 0;
 return ret;
}

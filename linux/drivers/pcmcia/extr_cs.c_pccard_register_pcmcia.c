
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int state; int skt_mutex; struct pcmcia_callback* callback; } ;
struct pcmcia_callback {int (* add ) (struct pcmcia_socket*) ;} ;


 int EBUSY ;
 int SOCKET_CARDBUS ;
 int SOCKET_PRESENT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct pcmcia_socket*) ;

int pccard_register_pcmcia(struct pcmcia_socket *s, struct pcmcia_callback *c)
{
 int ret = 0;


 mutex_lock(&s->skt_mutex);

 if (c) {

  if (s->callback) {
   ret = -EBUSY;
   goto err;
  }

  s->callback = c;

  if ((s->state & (SOCKET_PRESENT|SOCKET_CARDBUS)) == SOCKET_PRESENT)
   s->callback->add(s);
 } else
  s->callback = ((void*)0);
 err:
 mutex_unlock(&s->skt_mutex);

 return ret;
}

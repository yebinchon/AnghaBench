
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int ops_mutex; int present; } ;


 int atomic_set (int *,int ) ;
 int destroy_cis_cache (struct pcmcia_socket*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcmcia_card_remove (struct pcmcia_socket*,int *) ;
 int pcmcia_cleanup_irq (struct pcmcia_socket*) ;

__attribute__((used)) static int pcmcia_bus_remove(struct pcmcia_socket *skt)
{
 atomic_set(&skt->present, 0);
 pcmcia_card_remove(skt, ((void*)0));

 mutex_lock(&skt->ops_mutex);
 destroy_cis_cache(skt);
 pcmcia_cleanup_irq(skt);
 mutex_unlock(&skt->ops_mutex);

 return 0;
}

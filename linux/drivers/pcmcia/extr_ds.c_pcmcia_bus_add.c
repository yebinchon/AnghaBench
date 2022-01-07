
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int ops_mutex; scalar_t__ pcmcia_pfc; int present; } ;


 int atomic_set (int *,int) ;
 int destroy_cis_cache (struct pcmcia_socket*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcmcia_card_add (struct pcmcia_socket*) ;

__attribute__((used)) static int pcmcia_bus_add(struct pcmcia_socket *skt)
{
 atomic_set(&skt->present, 1);

 mutex_lock(&skt->ops_mutex);
 skt->pcmcia_pfc = 0;
 destroy_cis_cache(skt);
 mutex_unlock(&skt->ops_mutex);

 pcmcia_card_add(skt);

 return 0;
}

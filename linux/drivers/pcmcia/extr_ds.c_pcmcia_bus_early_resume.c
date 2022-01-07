
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int ops_mutex; scalar_t__ functions; int * fake_cis; int dev; } ;


 int destroy_cis_cache (struct pcmcia_socket*) ;
 int dev_dbg (int *,char*) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcmcia_bus_add (struct pcmcia_socket*) ;
 int pcmcia_bus_remove (struct pcmcia_socket*) ;
 int verify_cis_cache (struct pcmcia_socket*) ;

__attribute__((used)) static int pcmcia_bus_early_resume(struct pcmcia_socket *skt)
{
 if (!verify_cis_cache(skt))
  return 0;

 dev_dbg(&skt->dev, "cis mismatch - different card\n");


 pcmcia_bus_remove(skt);

 mutex_lock(&skt->ops_mutex);
 destroy_cis_cache(skt);
 kfree(skt->fake_cis);
 skt->fake_cis = ((void*)0);
 skt->functions = 0;
 mutex_unlock(&skt->ops_mutex);


 pcmcia_bus_add(skt);
 return 0;
}

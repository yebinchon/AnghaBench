
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {int res_skt; int res_io; int res_mem; int res_attr; int * virt_io; int cpufreq_nb; TYPE_1__* ops; int socket; int poll_timer; } ;
struct TYPE_2__ {scalar_t__ frequency_change; } ;


 int CPUFREQ_TRANSITION_NOTIFIER ;
 int cpufreq_unregister_notifier (int *,int ) ;
 int dead_socket ;
 int del_timer_sync (int *) ;
 int iounmap (int *) ;
 int pcmcia_unregister_socket (int *) ;
 int release_resource (int *) ;
 int soc_common_pcmcia_config_skt (struct soc_pcmcia_socket*,int *) ;
 int soc_pcmcia_hw_shutdown (struct soc_pcmcia_socket*) ;

void soc_pcmcia_remove_one(struct soc_pcmcia_socket *skt)
{
 del_timer_sync(&skt->poll_timer);

 pcmcia_unregister_socket(&skt->socket);







 soc_pcmcia_hw_shutdown(skt);


 soc_common_pcmcia_config_skt(skt, &dead_socket);

 iounmap(skt->virt_io);
 skt->virt_io = ((void*)0);
 release_resource(&skt->res_attr);
 release_resource(&skt->res_mem);
 release_resource(&skt->res_io);
 release_resource(&skt->res_skt);
}

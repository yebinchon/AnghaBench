
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct soc_pcmcia_socket {int poll_timer; } ;


 scalar_t__ SOC_PCMCIA_POLL_PERIOD ;
 int debug (struct soc_pcmcia_socket*,int,char*) ;
 struct soc_pcmcia_socket* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int poll_timer ;
 struct soc_pcmcia_socket* skt ;
 int soc_common_check_status (struct soc_pcmcia_socket*) ;

__attribute__((used)) static void soc_common_pcmcia_poll_event(struct timer_list *t)
{
 struct soc_pcmcia_socket *skt = from_timer(skt, t, poll_timer);
 debug(skt, 4, "polling for events\n");

 mod_timer(&skt->poll_timer, jiffies + SOC_PCMCIA_POLL_PERIOD);

 soc_common_check_status(skt);
}

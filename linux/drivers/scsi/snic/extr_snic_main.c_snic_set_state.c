
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {int state; int shost; } ;
typedef enum snic_state { ____Placeholder_snic_state } snic_state ;


 int SNIC_HOST_INFO (int ,char*,int ,int ) ;
 int atomic_set (int *,int) ;
 int snic_get_state (struct snic*) ;
 int snic_state_to_str (int) ;

void
snic_set_state(struct snic *snic, enum snic_state state)
{
 SNIC_HOST_INFO(snic->shost, "snic state change from %s to %s\n",
         snic_state_to_str(snic_get_state(snic)),
         snic_state_to_str(state));

 atomic_set(&snic->state, state);
}

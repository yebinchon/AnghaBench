
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_discovery {TYPE_1__* disc_work; int pending; } ;
struct asd_sas_port {int ha; struct sas_discovery disc; } ;
typedef enum discover_event { ____Placeholder_discover_event } discover_event ;
struct TYPE_2__ {int work; } ;


 int BUG_ON (int) ;
 int DISC_NUM_EVENTS ;
 int sas_chain_event (int,int *,int *,int ) ;

int sas_discover_event(struct asd_sas_port *port, enum discover_event ev)
{
 struct sas_discovery *disc;

 if (!port)
  return 0;
 disc = &port->disc;

 BUG_ON(ev >= DISC_NUM_EVENTS);

 sas_chain_event(ev, &disc->pending, &disc->disc_work[ev].work, port->ha);

 return 0;
}

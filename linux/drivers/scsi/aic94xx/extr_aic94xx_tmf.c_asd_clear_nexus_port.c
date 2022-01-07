
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct asd_sas_port {int phy_mask; TYPE_1__* ha; } ;
struct asd_ha_struct {int dummy; } ;
struct TYPE_5__ {int conn_mask; int nexus; } ;
struct TYPE_6__ {TYPE_2__ clear_nexus; } ;
struct TYPE_4__ {struct asd_ha_struct* lldd_ha; } ;


 int CLEAR_NEXUS_POST ;
 int CLEAR_NEXUS_PRE ;
 int NEXUS_PORT ;
 TYPE_3__* scb ;

int asd_clear_nexus_port(struct asd_sas_port *port)
{
 struct asd_ha_struct *asd_ha = port->ha->lldd_ha;

 CLEAR_NEXUS_PRE;
 scb->clear_nexus.nexus = NEXUS_PORT;
 scb->clear_nexus.conn_mask = port->phy_mask;
 CLEAR_NEXUS_POST;
}

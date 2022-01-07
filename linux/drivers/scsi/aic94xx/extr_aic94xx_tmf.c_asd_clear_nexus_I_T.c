
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct domain_device {scalar_t__ lldd_dev; TYPE_2__* port; } ;
struct asd_ha_struct {int dummy; } ;
typedef enum clear_nexus_phase { ____Placeholder_clear_nexus_phase } clear_nexus_phase ;
struct TYPE_7__ {int flags; int conn_handle; int nexus; } ;
struct TYPE_8__ {TYPE_3__ clear_nexus; } ;
struct TYPE_6__ {TYPE_1__* ha; } ;
struct TYPE_5__ {struct asd_ha_struct* lldd_ha; } ;


 int CLEAR_NEXUS_POST ;
 int CLEAR_NEXUS_PRE ;
 int EXEC_Q ;
 int NEXUS_I_T ;



 int NOTINQ ;
 int RESUME_TX ;
 int SEND_Q ;
 int SUSPEND_TX ;
 int cpu_to_le16 (int ) ;
 TYPE_4__* scb ;

__attribute__((used)) static int asd_clear_nexus_I_T(struct domain_device *dev,
          enum clear_nexus_phase phase)
{
 struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;

 CLEAR_NEXUS_PRE;
 scb->clear_nexus.nexus = NEXUS_I_T;
 switch (phase) {
 case 129:
  scb->clear_nexus.flags = EXEC_Q | SUSPEND_TX;
  break;
 case 130:
  scb->clear_nexus.flags = SEND_Q | NOTINQ;
  break;
 case 128:
  scb->clear_nexus.flags = RESUME_TX;
 }
 scb->clear_nexus.conn_handle = cpu_to_le16((u16)(unsigned long)
         dev->lldd_dev);
 CLEAR_NEXUS_POST;
}

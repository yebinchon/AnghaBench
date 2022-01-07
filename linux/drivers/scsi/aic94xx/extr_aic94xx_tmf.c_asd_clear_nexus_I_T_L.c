
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct domain_device {scalar_t__ lldd_dev; TYPE_3__* port; } ;
struct asd_ha_struct {int dummy; } ;
struct TYPE_6__ {int lun; } ;
struct TYPE_9__ {int flags; int conn_handle; TYPE_1__ ssp_task; int nexus; } ;
struct TYPE_10__ {TYPE_4__ clear_nexus; } ;
struct TYPE_8__ {TYPE_2__* ha; } ;
struct TYPE_7__ {struct asd_ha_struct* lldd_ha; } ;


 int CLEAR_NEXUS_POST ;
 int CLEAR_NEXUS_PRE ;
 int EXEC_Q ;
 int NEXUS_I_T_L ;
 int NOTINQ ;
 int SEND_Q ;
 int cpu_to_le16 (int ) ;
 int memcpy (int ,int *,int) ;
 TYPE_5__* scb ;

__attribute__((used)) static int asd_clear_nexus_I_T_L(struct domain_device *dev, u8 *lun)
{
 struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;

 CLEAR_NEXUS_PRE;
 scb->clear_nexus.nexus = NEXUS_I_T_L;
 scb->clear_nexus.flags = SEND_Q | EXEC_Q | NOTINQ;
 memcpy(scb->clear_nexus.ssp_task.lun, lun, 8);
 scb->clear_nexus.conn_handle = cpu_to_le16((u16)(unsigned long)
         dev->lldd_dev);
 CLEAR_NEXUS_POST;
}

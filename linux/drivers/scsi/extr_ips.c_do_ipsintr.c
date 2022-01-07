
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct Scsi_Host {int host_lock; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int (* intr ) (TYPE_2__*) ;} ;
struct TYPE_7__ {size_t host_num; TYPE_1__ func; int active; } ;
typedef TYPE_2__ ips_ha_t ;


 int IPS_INTR_ON ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_RETVAL (int) ;
 int METHOD_TRACE (char*,int) ;
 int ips_next (TYPE_2__*,int ) ;
 struct Scsi_Host** ips_sh ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static irqreturn_t
do_ipsintr(int irq, void *dev_id)
{
 ips_ha_t *ha;
 struct Scsi_Host *host;
 int irqstatus;

 METHOD_TRACE("do_ipsintr", 2);

 ha = (ips_ha_t *) dev_id;
 if (!ha)
  return IRQ_NONE;
 host = ips_sh[ha->host_num];

 if (!host) {
  (*ha->func.intr) (ha);
  return IRQ_HANDLED;
 }

 spin_lock(host->host_lock);

 if (!ha->active) {
  spin_unlock(host->host_lock);
  return IRQ_HANDLED;
 }

 irqstatus = (*ha->func.intr) (ha);

 spin_unlock(host->host_lock);


 ips_next(ha, IPS_INTR_ON);
 return IRQ_RETVAL(irqstatus);
}

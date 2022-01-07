
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_4__ {char* ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct gdth_cmndinfo {scalar_t__ priority; int internal_command; } ;
struct TYPE_5__ {struct scsi_cmnd* req_first; int smp_lock; } ;
typedef TYPE_2__ gdth_ha_str ;


 int TRACE (char*) ;
 int TRACE3 (char*) ;
 struct gdth_cmndinfo* gdth_cmnd_priv (struct scsi_cmnd*) ;
 unsigned long max_rq ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gdth_putq(gdth_ha_str *ha, struct scsi_cmnd *scp, u8 priority)
{
    struct gdth_cmndinfo *cmndinfo = gdth_cmnd_priv(scp);
    register struct scsi_cmnd *pscp;
    register struct scsi_cmnd *nscp;
    unsigned long flags;

    TRACE(("gdth_putq() priority %d\n",priority));
    spin_lock_irqsave(&ha->smp_lock, flags);

    if (!cmndinfo->internal_command)
        cmndinfo->priority = priority;

    if (ha->req_first==((void*)0)) {
        ha->req_first = scp;
        scp->SCp.ptr = ((void*)0);
    } else {
        pscp = ha->req_first;
        nscp = (struct scsi_cmnd *)pscp->SCp.ptr;

        while (nscp && gdth_cmnd_priv(nscp)->priority <= priority) {
            pscp = nscp;
            nscp = (struct scsi_cmnd *)pscp->SCp.ptr;
        }
        pscp->SCp.ptr = (char *)scp;
        scp->SCp.ptr = (char *)nscp;
    }
    spin_unlock_irqrestore(&ha->smp_lock, flags);
}

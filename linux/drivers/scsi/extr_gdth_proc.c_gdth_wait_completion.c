
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct scsi_cmnd {TYPE_2__* device; } ;
struct gdth_cmndinfo {scalar_t__ wait_for_completion; } ;
struct TYPE_7__ {int smp_lock; TYPE_1__* cmd_tab; } ;
typedef TYPE_3__ gdth_ha_str ;
struct TYPE_6__ {scalar_t__ channel; scalar_t__ id; } ;
struct TYPE_5__ {struct scsi_cmnd* cmnd; } ;


 int GDTH_MAXCMDS ;
 int SPECIAL_SCP (struct scsi_cmnd*) ;
 int barrier () ;
 struct gdth_cmndinfo* gdth_cmnd_priv (struct scsi_cmnd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gdth_wait_completion(gdth_ha_str *ha, int busnum, int id)
{
    unsigned long flags;
    int i;
    struct scsi_cmnd *scp;
    struct gdth_cmndinfo *cmndinfo;
    u8 b, t;

    spin_lock_irqsave(&ha->smp_lock, flags);

    for (i = 0; i < GDTH_MAXCMDS; ++i) {
        scp = ha->cmd_tab[i].cmnd;
        cmndinfo = gdth_cmnd_priv(scp);

        b = scp->device->channel;
        t = scp->device->id;
        if (!SPECIAL_SCP(scp) && t == (u8)id &&
            b == (u8)busnum) {
            cmndinfo->wait_for_completion = 0;
            spin_unlock_irqrestore(&ha->smp_lock, flags);
            while (!cmndinfo->wait_for_completion)
                barrier();
            spin_lock_irqsave(&ha->smp_lock, flags);
        }
    }
    spin_unlock_irqrestore(&ha->smp_lock, flags);
}

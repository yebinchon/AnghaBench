#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct scsi_cmnd {TYPE_2__* device; } ;
struct gdth_cmndinfo {scalar_t__ wait_for_completion; } ;
struct TYPE_7__ {int /*<<< orphan*/  smp_lock; TYPE_1__* cmd_tab; } ;
typedef  TYPE_3__ gdth_ha_str ;
struct TYPE_6__ {scalar_t__ channel; scalar_t__ id; } ;
struct TYPE_5__ {struct scsi_cmnd* cmnd; } ;

/* Variables and functions */
 int GDTH_MAXCMDS ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct gdth_cmndinfo* FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(gdth_ha_str *ha, int busnum, int id)
{
    unsigned long flags;
    int i;
    struct scsi_cmnd *scp;
    struct gdth_cmndinfo *cmndinfo;
    u8 b, t;

    FUNC3(&ha->smp_lock, flags);

    for (i = 0; i < GDTH_MAXCMDS; ++i) {
        scp = ha->cmd_tab[i].cmnd;
        cmndinfo = FUNC2(scp);

        b = scp->device->channel;
        t = scp->device->id;
        if (!FUNC0(scp) && t == (u8)id && 
            b == (u8)busnum) {
            cmndinfo->wait_for_completion = 0;
            FUNC4(&ha->smp_lock, flags);
            while (!cmndinfo->wait_for_completion)
                FUNC1();
            FUNC3(&ha->smp_lock, flags);
        }
    }
    FUNC4(&ha->smp_lock, flags);
}
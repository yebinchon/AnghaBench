
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int smp_lock; } ;
typedef TYPE_1__ gdth_ha_str ;
struct TYPE_9__ {scalar_t__ event_source; int application; } ;
typedef TYPE_2__ gdth_evt_str ;


 int FALSE ;
 int MAX_EVENTS ;
 int TRACE2 (char*) ;
 int TRUE ;
 TYPE_2__* ebuffer ;
 int elastidx ;
 int eoldidx ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gdth_readapp_event(gdth_ha_str *ha,
                               u8 application, gdth_evt_str *estr)
{
    gdth_evt_str *e;
    int eindex;
    unsigned long flags;
    u8 found = FALSE;

    TRACE2(("gdth_readapp_event() app. %d\n", application));
    spin_lock_irqsave(&ha->smp_lock, flags);
    eindex = eoldidx;
    for (;;) {
        e = &ebuffer[eindex];
        if (e->event_source == 0)
            break;
        if ((e->application & application) == 0) {
            e->application |= application;
            found = TRUE;
            break;
        }
        if (eindex == elastidx)
            break;
        if (++eindex == MAX_EVENTS)
            eindex = 0;
    }
    if (found)
        memcpy(estr, e, sizeof(gdth_evt_str));
    else
        estr->event_source = 0;
    spin_unlock_irqrestore(&ha->smp_lock, flags);
}

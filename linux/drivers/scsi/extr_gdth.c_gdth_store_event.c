
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u32 ;
typedef scalar_t__ u16 ;
typedef int gdth_ha_str ;
struct TYPE_7__ {scalar_t__ size; int event_string; int eu; } ;
struct TYPE_6__ {scalar_t__ event_source; scalar_t__ event_idx; int same_count; scalar_t__ application; TYPE_2__ event_data; void* last_stamp; void* first_stamp; } ;
typedef TYPE_1__ gdth_evt_str ;
typedef TYPE_2__ gdth_evt_data ;


 size_t MAX_EVENTS ;
 int TRACE2 (char*) ;
 TYPE_1__* ebuffer ;
 size_t elastidx ;
 size_t eoldidx ;
 scalar_t__ ktime_get_real_seconds () ;
 int memcmp (char*,char*,scalar_t__) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static gdth_evt_str *gdth_store_event(gdth_ha_str *ha, u16 source,
                                      u16 idx, gdth_evt_data *evt)
{
    gdth_evt_str *e;


    TRACE2(("gdth_store_event() source %d idx %d\n", source, idx));
    if (source == 0)
        return ((void*)0);

    if (ebuffer[elastidx].event_source == source &&
        ebuffer[elastidx].event_idx == idx &&
        ((evt->size != 0 && ebuffer[elastidx].event_data.size != 0 &&
            !memcmp((char *)&ebuffer[elastidx].event_data.eu,
            (char *)&evt->eu, evt->size)) ||
        (evt->size == 0 && ebuffer[elastidx].event_data.size == 0 &&
            !strcmp((char *)&ebuffer[elastidx].event_data.event_string,
            (char *)&evt->event_string)))) {
        e = &ebuffer[elastidx];
 e->last_stamp = (u32)ktime_get_real_seconds();
        ++e->same_count;
    } else {
        if (ebuffer[elastidx].event_source != 0) {
            ++elastidx;
            if (elastidx == MAX_EVENTS)
                elastidx = 0;
            if (elastidx == eoldidx) {
                ++eoldidx;
                if (eoldidx == MAX_EVENTS)
                    eoldidx = 0;
            }
        }
        e = &ebuffer[elastidx];
        e->event_source = source;
        e->event_idx = idx;
 e->first_stamp = e->last_stamp = (u32)ktime_get_real_seconds();
        e->same_count = 1;
        e->event_data = *evt;
        e->application = 0;
    }
    return e;
}

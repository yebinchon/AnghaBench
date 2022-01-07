
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {TYPE_1__* pccb; TYPE_2__* cmd_tab; int hanum; } ;
typedef TYPE_3__ gdth_ha_str ;
struct TYPE_6__ {scalar_t__ cmnd; int service; } ;
struct TYPE_5__ {scalar_t__ RequestBuffer; scalar_t__ CommandIndex; int Service; } ;


 int GDTH_MAXCMDS ;
 int TRACE (char*) ;
 scalar_t__ UNUSED_CMND ;

__attribute__((used)) static int gdth_get_cmd_index(gdth_ha_str *ha)
{
    int i;

    TRACE(("gdth_get_cmd_index() hanum %d\n", ha->hanum));

    for (i=0; i<GDTH_MAXCMDS; ++i) {
        if (ha->cmd_tab[i].cmnd == UNUSED_CMND) {
            ha->cmd_tab[i].cmnd = ha->pccb->RequestBuffer;
            ha->cmd_tab[i].service = ha->pccb->Service;
            ha->pccb->CommandIndex = (u32)i+2;
            return (i+2);
        }
    }
    return 0;
}

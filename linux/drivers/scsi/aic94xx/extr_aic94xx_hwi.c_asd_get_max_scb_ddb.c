
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_scbs; int max_ddbs; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;


 int ASD_DDB_SIZE ;
 int ASD_DPRINTK (char*,int,int) ;
 int ASD_SCB_SIZE ;
 int asd_get_cmdctx_size (struct asd_ha_struct*) ;
 int asd_get_devctx_size (struct asd_ha_struct*) ;

__attribute__((used)) static void asd_get_max_scb_ddb(struct asd_ha_struct *asd_ha)
{
 asd_ha->hw_prof.max_scbs = asd_get_cmdctx_size(asd_ha)/ASD_SCB_SIZE;
 asd_ha->hw_prof.max_ddbs = asd_get_devctx_size(asd_ha)/ASD_DDB_SIZE;
 ASD_DPRINTK("max_scbs:%d, max_ddbs:%d\n",
      asd_ha->hw_prof.max_scbs,
      asd_ha->hw_prof.max_ddbs);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_ha_struct {struct asd_ha_struct* lldd_ha; } ;
struct asd_ha_struct {int dummy; } ;
struct TYPE_3__ {int nexus; } ;
struct TYPE_4__ {TYPE_1__ clear_nexus; } ;


 int CLEAR_NEXUS_POST ;
 int CLEAR_NEXUS_PRE ;
 int NEXUS_ADAPTER ;
 TYPE_2__* scb ;

int asd_clear_nexus_ha(struct sas_ha_struct *sas_ha)
{
 struct asd_ha_struct *asd_ha = sas_ha->lldd_ha;

 CLEAR_NEXUS_PRE;
 scb->clear_nexus.nexus = NEXUS_ADAPTER;
 CLEAR_NEXUS_POST;
}

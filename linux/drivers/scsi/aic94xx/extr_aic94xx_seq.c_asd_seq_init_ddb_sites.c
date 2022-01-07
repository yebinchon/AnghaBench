
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int dummy; } ;
struct asd_ddb_ssp_smp_target_port {int dummy; } ;


 unsigned int ASD_MAX_DDBS ;
 int asd_ddbsite_write_dword (struct asd_ha_struct*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void asd_seq_init_ddb_sites(struct asd_ha_struct *asd_ha)
{
 unsigned int i;
 unsigned int ddb_site;

 for (ddb_site = 0 ; ddb_site < ASD_MAX_DDBS; ddb_site++)
  for (i = 0; i < sizeof(struct asd_ddb_ssp_smp_target_port); i+= 4)
   asd_ddbsite_write_dword(asd_ha, ddb_site, i, 0);
}

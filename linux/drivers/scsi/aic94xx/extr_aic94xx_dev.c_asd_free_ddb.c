
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int dummy; } ;


 int CLEAR_DDB (int,struct asd_ha_struct*) ;
 int DDB_TYPE ;
 int DDB_TYPE_UNUSED ;
 int asd_ddbsite_write_byte (struct asd_ha_struct*,int,int ,int ) ;

__attribute__((used)) static void asd_free_ddb(struct asd_ha_struct *asd_ha, int ddb)
{
 if (!ddb || ddb >= 0xFFFF)
  return;
 asd_ddbsite_write_byte(asd_ha, ddb, DDB_TYPE, DDB_TYPE_UNUSED);
 CLEAR_DDB(ddb, asd_ha);
}

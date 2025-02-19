
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct pmcraid_config_table_entry {scalar_t__ resource_type; int unique_flags1; int unique_flags0; int resource_address; } ;


 scalar_t__ PMCRAID_FW_VERSION_1 ;
 scalar_t__ PMCRAID_VIRTUAL_ENCL_BUS_ID ;
 scalar_t__ RES_BUS (int ) ;
 scalar_t__ RES_TYPE_GSCSI ;
 scalar_t__ RES_TYPE_VSET ;

__attribute__((used)) static int pmcraid_expose_resource(u16 fw_version,
       struct pmcraid_config_table_entry *cfgte)
{
 int retval = 0;

 if (cfgte->resource_type == RES_TYPE_VSET) {
  if (fw_version <= PMCRAID_FW_VERSION_1)
   retval = ((cfgte->unique_flags1 & 0x80) == 0);
  else
   retval = ((cfgte->unique_flags0 & 0x80) == 0 &&
      (cfgte->unique_flags1 & 0x80) == 0);

 } else if (cfgte->resource_type == RES_TYPE_GSCSI)
  retval = (RES_BUS(cfgte->resource_address) !=
    PMCRAID_VIRTUAL_ENCL_BUS_ID);
 return retval;
}

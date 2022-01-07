
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct domain_device {scalar_t__ lldd_dev; TYPE_2__* port; } ;
struct asd_ha_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ha; } ;
struct TYPE_3__ {struct asd_ha_struct* lldd_ha; } ;


 int SISTER_DDB ;
 int asd_ddbsite_write_word (struct asd_ha_struct*,int,int,int) ;
 int asd_get_ddb (struct asd_ha_struct*) ;

__attribute__((used)) static int asd_init_sata_pm_table_ddb(struct domain_device *dev)
{
 struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;
 int ddb, i;

 ddb = asd_get_ddb(asd_ha);
 if (ddb < 0)
  return ddb;

 for (i = 0; i < 32; i += 2)
  asd_ddbsite_write_word(asd_ha, ddb, i, 0xFFFF);

 asd_ddbsite_write_word(asd_ha, (int) (unsigned long) dev->lldd_dev,
          SISTER_DDB, ddb);

 return 0;
}

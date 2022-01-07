
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pm8001_hba_info {struct pm8001_device* devices; } ;
struct pm8001_device {scalar_t__ dev_type; size_t id; } ;


 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 size_t PM8001_MAX_DEVICES ;
 scalar_t__ SAS_PHY_UNUSED ;
 int pm8001_printk (char*,size_t) ;

__attribute__((used)) static struct pm8001_device *pm8001_alloc_dev(struct pm8001_hba_info *pm8001_ha)
{
 u32 dev;
 for (dev = 0; dev < PM8001_MAX_DEVICES; dev++) {
  if (pm8001_ha->devices[dev].dev_type == SAS_PHY_UNUSED) {
   pm8001_ha->devices[dev].id = dev;
   return &pm8001_ha->devices[dev];
  }
 }
 if (dev == PM8001_MAX_DEVICES) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("max support %d devices, ignore ..\n",
   PM8001_MAX_DEVICES));
 }
 return ((void*)0);
}

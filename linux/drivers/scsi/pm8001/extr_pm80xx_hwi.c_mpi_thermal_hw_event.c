
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thermal_hw_event {int rht_lht; int thermal_event; } ;
struct pm8001_hba_info {int dummy; } ;


 int PM8001_IO_DBG (struct pm8001_hba_info*,int ) ;
 int le32_to_cpu (int ) ;
 int pm8001_printk (char*,...) ;

__attribute__((used)) static int mpi_thermal_hw_event(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 struct thermal_hw_event *pPayload =
  (struct thermal_hw_event *)(piomb + 4);

 u32 thermal_event = le32_to_cpu(pPayload->thermal_event);
 u32 rht_lht = le32_to_cpu(pPayload->rht_lht);

 if (thermal_event & 0x40) {
  PM8001_IO_DBG(pm8001_ha, pm8001_printk(
   "Thermal Event: Local high temperature violated!\n"));
  PM8001_IO_DBG(pm8001_ha, pm8001_printk(
   "Thermal Event: Measured local high temperature %d\n",
    ((rht_lht & 0xFF00) >> 8)));
 }
 if (thermal_event & 0x10) {
  PM8001_IO_DBG(pm8001_ha, pm8001_printk(
   "Thermal Event: Remote high temperature violated!\n"));
  PM8001_IO_DBG(pm8001_ha, pm8001_printk(
   "Thermal Event: Measured remote high temperature %d\n",
    ((rht_lht & 0xFF000000) >> 24)));
 }
 return 0;
}

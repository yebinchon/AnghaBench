
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_sensor_entry {int tzone; int store_ptps; int store_dts_enable; int locked; } ;


 int MBI_REG_WRITE ;
 int QRK_DTS_REG_OFFSET_ENABLE ;
 int QRK_DTS_REG_OFFSET_PTPS ;
 int QRK_MBI_UNIT_RMU ;
 int dts_update_mutex ;
 int iosf_mbi_write (int ,int ,int ,int ) ;
 int kfree (struct soc_sensor_entry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int thermal_zone_device_unregister (int ) ;

__attribute__((used)) static void free_soc_dts(struct soc_sensor_entry *aux_entry)
{
 if (aux_entry) {
  if (!aux_entry->locked) {
   mutex_lock(&dts_update_mutex);
   iosf_mbi_write(QRK_MBI_UNIT_RMU, MBI_REG_WRITE,
           QRK_DTS_REG_OFFSET_ENABLE,
           aux_entry->store_dts_enable);

   iosf_mbi_write(QRK_MBI_UNIT_RMU, MBI_REG_WRITE,
           QRK_DTS_REG_OFFSET_PTPS,
           aux_entry->store_ptps);
   mutex_unlock(&dts_update_mutex);
  }
  thermal_zone_device_unregister(aux_entry->tzone);
  kfree(aux_entry);
 }
}

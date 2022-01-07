
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct soc_sensor_entry {int locked; int store_dts_enable; int store_ptps; int tzone; } ;


 int ENOMEM ;
 struct soc_sensor_entry* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MBI_REG_READ ;
 int PTR_ERR (int ) ;
 int QRK_DTS_LOCK_BIT ;
 int QRK_DTS_REG_OFFSET_ENABLE ;
 int QRK_DTS_REG_OFFSET_LOCK ;
 int QRK_DTS_REG_OFFSET_PTPS ;
 int QRK_DTS_WR_MASK_CLR ;
 int QRK_DTS_WR_MASK_SET ;
 int QRK_MAX_DTS_TRIPS ;
 int QRK_MBI_UNIT_RMU ;
 int dts_update_mutex ;
 int iosf_mbi_read (int ,int ,int ,int*) ;
 int kfree (struct soc_sensor_entry*) ;
 struct soc_sensor_entry* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int polling_delay ;
 int soc_dts_enable (int ) ;
 int thermal_zone_device_register (char*,int ,int,struct soc_sensor_entry*,int *,int *,int ,int ) ;
 int thermal_zone_device_unregister (int ) ;
 int tzone_ops ;

__attribute__((used)) static struct soc_sensor_entry *alloc_soc_dts(void)
{
 struct soc_sensor_entry *aux_entry;
 int err;
 u32 out;
 int wr_mask;

 aux_entry = kzalloc(sizeof(*aux_entry), GFP_KERNEL);
 if (!aux_entry) {
  err = -ENOMEM;
  return ERR_PTR(-ENOMEM);
 }


 err = iosf_mbi_read(QRK_MBI_UNIT_RMU, MBI_REG_READ,
       QRK_DTS_REG_OFFSET_LOCK, &out);
 if (err)
  goto err_ret;

 if (out & QRK_DTS_LOCK_BIT) {
  aux_entry->locked = 1;
  wr_mask = QRK_DTS_WR_MASK_CLR;
 } else {
  aux_entry->locked = 0;
  wr_mask = QRK_DTS_WR_MASK_SET;
 }


 if (!aux_entry->locked) {

  err = iosf_mbi_read(QRK_MBI_UNIT_RMU, MBI_REG_READ,
        QRK_DTS_REG_OFFSET_ENABLE,
        &aux_entry->store_dts_enable);
  if (err)
   goto err_ret;


  err = iosf_mbi_read(QRK_MBI_UNIT_RMU, MBI_REG_READ,
        QRK_DTS_REG_OFFSET_PTPS,
        &aux_entry->store_ptps);
  if (err)
   goto err_ret;
 }

 aux_entry->tzone = thermal_zone_device_register("quark_dts",
   QRK_MAX_DTS_TRIPS,
   wr_mask,
   aux_entry, &tzone_ops, ((void*)0), 0, polling_delay);
 if (IS_ERR(aux_entry->tzone)) {
  err = PTR_ERR(aux_entry->tzone);
  goto err_ret;
 }

 mutex_lock(&dts_update_mutex);
 err = soc_dts_enable(aux_entry->tzone);
 mutex_unlock(&dts_update_mutex);
 if (err)
  goto err_aux_status;

 return aux_entry;

err_aux_status:
 thermal_zone_device_unregister(aux_entry->tzone);
err_ret:
 kfree(aux_entry);
 return ERR_PTR(err);
}

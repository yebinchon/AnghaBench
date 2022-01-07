
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct soc_sensor_entry {scalar_t__ locked; } ;


 int EPERM ;
 int MBI_REG_READ ;
 int MBI_REG_WRITE ;
 int QRK_DTS_MASK_TP_THRES ;
 int QRK_DTS_REG_OFFSET_PTPS ;
 int QRK_DTS_SAFE_TP_THRES ;
 int QRK_DTS_SHIFT_TP ;
 int QRK_DTS_TEMP_BASE ;
 int QRK_MBI_UNIT_RMU ;
 int dts_update_mutex ;
 int iosf_mbi_read (int ,int ,int ,int*) ;
 int iosf_mbi_write (int ,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int update_trip_temp(struct soc_sensor_entry *aux_entry,
    int trip, int temp)
{
 u32 out;
 u32 temp_out;
 u32 store_ptps;
 int ret;

 mutex_lock(&dts_update_mutex);
 if (aux_entry->locked) {
  ret = -EPERM;
  goto failed;
 }

 ret = iosf_mbi_read(QRK_MBI_UNIT_RMU, MBI_REG_READ,
       QRK_DTS_REG_OFFSET_PTPS, &store_ptps);
 if (ret)
  goto failed;







 if (temp > QRK_DTS_SAFE_TP_THRES)
  temp = QRK_DTS_SAFE_TP_THRES;







 temp_out = temp + QRK_DTS_TEMP_BASE;
 out = (store_ptps & ~(QRK_DTS_MASK_TP_THRES <<
  (trip * QRK_DTS_SHIFT_TP)));
 out |= (temp_out & QRK_DTS_MASK_TP_THRES) <<
  (trip * QRK_DTS_SHIFT_TP);

 ret = iosf_mbi_write(QRK_MBI_UNIT_RMU, MBI_REG_WRITE,
        QRK_DTS_REG_OFFSET_PTPS, out);

failed:
 mutex_unlock(&dts_update_mutex);
 return ret;
}

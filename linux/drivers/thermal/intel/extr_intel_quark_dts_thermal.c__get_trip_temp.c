
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MBI_REG_READ ;
 int QRK_DTS_MASK_TP_THRES ;
 int QRK_DTS_REG_OFFSET_PTPS ;
 int QRK_DTS_SHIFT_TP ;
 scalar_t__ QRK_DTS_TEMP_BASE ;
 int QRK_MBI_UNIT_RMU ;
 int dts_update_mutex ;
 int iosf_mbi_read (int ,int ,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int _get_trip_temp(int trip, int *temp)
{
 int status;
 u32 out;

 mutex_lock(&dts_update_mutex);
 status = iosf_mbi_read(QRK_MBI_UNIT_RMU, MBI_REG_READ,
          QRK_DTS_REG_OFFSET_PTPS, &out);
 mutex_unlock(&dts_update_mutex);

 if (status)
  return status;







 *temp = (out >> (trip * QRK_DTS_SHIFT_TP)) & QRK_DTS_MASK_TP_THRES;
 *temp -= QRK_DTS_TEMP_BASE;

 return 0;
}

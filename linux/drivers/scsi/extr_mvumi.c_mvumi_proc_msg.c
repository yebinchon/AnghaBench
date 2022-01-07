
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mvumi_hotplug_event {int size; int * bitmap; } ;
struct mvumi_hba {int fw_flag; int sas_discovery_mutex; } ;


 int DEVICE_OFFLINE ;
 int DEVICE_ONLINE ;
 int MVUMI_FW_ATTACH ;
 int find_next_zero_bit (unsigned long const*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mvumi_handle_hotplug (struct mvumi_hba*,int,int ) ;

__attribute__((used)) static void mvumi_proc_msg(struct mvumi_hba *mhba,
     struct mvumi_hotplug_event *param)
{
 u16 size = param->size;
 const unsigned long *ar_bitmap;
 const unsigned long *re_bitmap;
 int index;

 if (mhba->fw_flag & MVUMI_FW_ATTACH) {
  index = -1;
  ar_bitmap = (const unsigned long *) param->bitmap;
  re_bitmap = (const unsigned long *) &param->bitmap[size >> 3];

  mutex_lock(&mhba->sas_discovery_mutex);
  do {
   index = find_next_zero_bit(ar_bitmap, size, index + 1);
   if (index >= size)
    break;
   mvumi_handle_hotplug(mhba, index, DEVICE_ONLINE);
  } while (1);

  index = -1;
  do {
   index = find_next_zero_bit(re_bitmap, size, index + 1);
   if (index >= size)
    break;
   mvumi_handle_hotplug(mhba, index, DEVICE_OFFLINE);
  } while (1);
  mutex_unlock(&mhba->sas_discovery_mutex);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {scalar_t__ volume_offline; int scsi3addr; } ;


 int DEVICE_CHANGED ;
 int DEVICE_NOT_FOUND ;
 int DEVICE_SAME ;
 int DEVICE_UPDATED ;
 scalar_t__ SCSI3ADDR_EQ (int ,int ) ;
 scalar_t__ device_is_the_same (struct hpsa_scsi_dev_t*,struct hpsa_scsi_dev_t*) ;
 scalar_t__ device_updated (struct hpsa_scsi_dev_t*,struct hpsa_scsi_dev_t*) ;

__attribute__((used)) static int hpsa_scsi_find_entry(struct hpsa_scsi_dev_t *needle,
 struct hpsa_scsi_dev_t *haystack[], int haystack_size,
 int *index)
{
 int i;




 if (needle == ((void*)0))
  return 0;

 for (i = 0; i < haystack_size; i++) {
  if (haystack[i] == ((void*)0))
   continue;
  if (SCSI3ADDR_EQ(needle->scsi3addr, haystack[i]->scsi3addr)) {
   *index = i;
   if (device_is_the_same(needle, haystack[i])) {
    if (device_updated(needle, haystack[i]))
     return 3;
    return 2;
   } else {

    if (needle->volume_offline)
     return 0;
    return 1;
   }
  }
 }
 *index = -1;
 return 0;
}

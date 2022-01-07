
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sddr09_card_info {int capacity; int blockshift; int pageshift; scalar_t__* pba_to_lba; } ;


 scalar_t__ UNDEF ;

__attribute__((used)) static unsigned int
sddr09_find_unused_pba(struct sddr09_card_info *info, unsigned int lba) {
 static unsigned int lastpba = 1;
 int zonestart, end, i;

 zonestart = (lba/1000) << 10;
 end = info->capacity >> (info->blockshift + info->pageshift);
 end -= zonestart;
 if (end > 1024)
  end = 1024;

 for (i = lastpba+1; i < end; i++) {
  if (info->pba_to_lba[zonestart+i] == UNDEF) {
   lastpba = i;
   return zonestart+i;
  }
 }
 for (i = 0; i <= lastpba; i++) {
  if (info->pba_to_lba[zonestart+i] == UNDEF) {
   lastpba = i;
   return zonestart+i;
  }
 }
 return 0;
}

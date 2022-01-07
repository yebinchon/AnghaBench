
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv_row_info {int free_rows; int* avail; } ;
struct uwb_rsv_alloc_info {unsigned char* bm; struct uwb_rsv_row_info ri; } ;


 int UWB_MAS_PER_ZONE ;
 int UWB_NUM_ZONES ;
 unsigned char UWB_RSV_MAS_NOT_AVAIL ;

__attribute__((used)) static void get_row_descriptors(struct uwb_rsv_alloc_info *ai)
{
 unsigned char *bm = ai->bm;
 struct uwb_rsv_row_info *ri = &ai->ri;
 int col, mas;

 ri->free_rows = 16;
 for (mas = 0; mas < UWB_MAS_PER_ZONE; mas ++) {
  ri->avail[mas] = 1;
  for (col = 1; col < UWB_NUM_ZONES; col++) {
   if (bm[col * UWB_NUM_ZONES + mas] == UWB_RSV_MAS_NOT_AVAIL) {
    ri->free_rows--;
    ri->avail[mas]=0;
    break;
   }
  }
 }
}

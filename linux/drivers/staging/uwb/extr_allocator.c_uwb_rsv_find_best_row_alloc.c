
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int free_rows; int used_rows; } ;
struct uwb_rsv_alloc_info {int max_mas; int min_mas; int interval; TYPE_1__ ri; } ;


 int UWB_RSV_ALLOC_FOUND ;
 int UWB_RSV_ALLOC_NOT_FOUND ;
 int UWB_USABLE_MAS_PER_ROW ;
 int uwb_rsv_fill_row_alloc (struct uwb_rsv_alloc_info*) ;

__attribute__((used)) static int uwb_rsv_find_best_row_alloc(struct uwb_rsv_alloc_info *ai)
{
 int n_rows;
 int max_rows = ai->max_mas / UWB_USABLE_MAS_PER_ROW;
 int min_rows = ai->min_mas / UWB_USABLE_MAS_PER_ROW;
 if (ai->min_mas % UWB_USABLE_MAS_PER_ROW)
  min_rows++;
 for (n_rows = max_rows; n_rows >= min_rows; n_rows--) {
  if (n_rows <= ai->ri.free_rows) {
   ai->ri.used_rows = n_rows;
   ai->interval = 1;
   uwb_rsv_fill_row_alloc(ai);
   return UWB_RSV_ALLOC_FOUND;
  }
 }
 return UWB_RSV_ALLOC_NOT_FOUND;
}

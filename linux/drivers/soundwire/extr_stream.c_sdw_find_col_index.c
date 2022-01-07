
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDW_FRAME_COLS ;
 int pr_warn (char*) ;
 int* sdw_cols ;

int sdw_find_col_index(int col)
{
 int i;

 for (i = 0; i < SDW_FRAME_COLS; i++) {
  if (sdw_cols[i] == col)
   return i;
 }

 pr_warn("Requested column not found, selecting lowest column no: 2\n");
 return 0;
}

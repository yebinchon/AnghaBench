
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDW_FRAME_ROWS ;
 int pr_warn (char*) ;
 int* sdw_rows ;

int sdw_find_row_index(int row)
{
 int i;

 for (i = 0; i < SDW_FRAME_ROWS; i++) {
  if (sdw_rows[i] == row)
   return i;
 }

 pr_warn("Requested row not found, selecting lowest row no: 48\n");
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* vml_clocks ;
 int vml_num_clocks ;

__attribute__((used)) static int vml_nearest_clock(int clock)
{

 int i;
 int cur_index;
 int cur_diff;
 int diff;

 cur_index = 0;
 cur_diff = clock - vml_clocks[0];
 cur_diff = (cur_diff < 0) ? -cur_diff : cur_diff;
 for (i = 1; i < vml_num_clocks; ++i) {
  diff = clock - vml_clocks[i];
  diff = (diff < 0) ? -diff : diff;
  if (diff < cur_diff) {
   cur_index = i;
   cur_diff = diff;
  }
 }
 return vml_clocks[cur_index];
}

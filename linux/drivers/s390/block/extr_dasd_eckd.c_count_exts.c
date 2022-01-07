
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int count_exts(unsigned int from, unsigned int to, int trks_per_ext)
{
 int cur_pos = 0;
 int count = 0;
 int tmp;

 if (from == to)
  return 1;


 if (from % trks_per_ext != 0) {
  tmp = from + trks_per_ext - (from % trks_per_ext) - 1;
  if (tmp > to)
   tmp = to;
  cur_pos = tmp - from + 1;
  count++;
 }

 if (to - (from + cur_pos) + 1 >= trks_per_ext) {
  tmp = to - ((to - trks_per_ext + 1) % trks_per_ext);
  count += (tmp - (from + cur_pos) + 1) / trks_per_ext;
  cur_pos = tmp;
 }

 if (cur_pos < to)
  count++;

 return count;
}

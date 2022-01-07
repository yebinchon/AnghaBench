
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct log_group {int * ent; } ;
struct arena_info {scalar_t__ nfree; int* log_index; } ;


 int ENXIO ;
 int btt_log_group_read (struct arena_info*,scalar_t__,struct log_group*) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 scalar_t__ ent_is_padding (int *) ;
 int to_dev (struct arena_info*) ;

__attribute__((used)) static int log_set_indices(struct arena_info *arena)
{
 bool idx_set = 0, initial_state = 1;
 int ret, log_index[2] = {-1, -1};
 u32 i, j, next_idx = 0;
 struct log_group log;
 u32 pad_count = 0;

 for (i = 0; i < arena->nfree; i++) {
  ret = btt_log_group_read(arena, i, &log);
  if (ret < 0)
   return ret;

  for (j = 0; j < 4; j++) {
   if (!idx_set) {
    if (ent_is_padding(&log.ent[j])) {
     pad_count++;
     continue;
    } else {

     if ((next_idx == 1) &&
      (j == log_index[0]))
      continue;

     log_index[next_idx] = j;
     next_idx++;
    }
    if (next_idx == 2) {

     idx_set = 1;
    } else if (next_idx > 2) {

     return -ENXIO;
    }
   } else {






    if (j == log_index[0]) {

     if (ent_is_padding(&log.ent[j]))
      return -ENXIO;
    } else if (j == log_index[1]) {
     ;






    } else {

     if (!ent_is_padding(&log.ent[j]))
      return -ENXIO;
    }
   }
  }





  if (pad_count < 3)
   initial_state = 0;
  pad_count = 0;
 }

 if (!initial_state && !idx_set)
  return -ENXIO;





 if (initial_state)
  log_index[1] = 1;





 if ((log_index[0] == 0) && ((log_index[1] == 1) || (log_index[1] == 2)))
  ;
 else {
  dev_err(to_dev(arena), "Found an unknown padding scheme\n");
  return -ENXIO;
 }

 arena->log_index[0] = log_index[0];
 arena->log_index[1] = log_index[1];
 dev_dbg(to_dev(arena), "log_index_0 = %d\n", log_index[0]);
 dev_dbg(to_dev(arena), "log_index_1 = %d\n", log_index[1]);
 return 0;
}

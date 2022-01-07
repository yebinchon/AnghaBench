
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sas_task {struct mvs_slot_info* lldd_task; } ;
struct mvs_slot_info {int slot_tag; } ;
struct mvs_info {int dummy; } ;



__attribute__((used)) static int mvs_find_tag(struct mvs_info *mvi, struct sas_task *task, u32 *tag)
{
 if (task->lldd_task) {
  struct mvs_slot_info *slot;
  slot = task->lldd_task;
  *tag = slot->slot_tag;
  return 1;
 }
 return 0;
}

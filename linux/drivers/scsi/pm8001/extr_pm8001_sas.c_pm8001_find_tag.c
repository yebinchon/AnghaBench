
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sas_task {struct pm8001_ccb_info* lldd_task; } ;
struct pm8001_ccb_info {int ccb_tag; } ;



__attribute__((used)) static int pm8001_find_tag(struct sas_task *task, u32 *tag)
{
 if (task->lldd_task) {
  struct pm8001_ccb_info *ccb;
  ccb = task->lldd_task;
  *tag = ccb->ccb_tag;
  return 1;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {size_t cssid; size_t id; } ;
typedef enum cfg_task_t { ____Placeholder_cfg_task_t } cfg_task_t ;


 int** chp_cfg_task ;

__attribute__((used)) static enum cfg_task_t cfg_get_task(struct chp_id chpid)
{
 return chp_cfg_task[chpid.cssid][chpid.id];
}

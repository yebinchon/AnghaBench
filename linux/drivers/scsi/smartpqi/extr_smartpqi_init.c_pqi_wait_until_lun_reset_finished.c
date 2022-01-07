
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int lun_reset_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void pqi_wait_until_lun_reset_finished(struct pqi_ctrl_info *ctrl_info)
{
 mutex_lock(&ctrl_info->lun_reset_mutex);
 mutex_unlock(&ctrl_info->lun_reset_mutex);
}

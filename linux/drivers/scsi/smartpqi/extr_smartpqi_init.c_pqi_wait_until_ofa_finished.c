
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int ofa_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void pqi_wait_until_ofa_finished(struct pqi_ctrl_info *ctrl_info)
{
 mutex_lock(&ctrl_info->ofa_mutex);
 mutex_unlock(&ctrl_info->ofa_mutex);
}

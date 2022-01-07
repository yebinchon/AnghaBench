
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int scan_mutex; } ;
struct Scsi_Host {int dummy; } ;


 int mutex_is_locked (int *) ;
 struct pqi_ctrl_info* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int pqi_scan_finished(struct Scsi_Host *shost,
 unsigned long elapsed_time)
{
 struct pqi_ctrl_info *ctrl_info;

 ctrl_info = shost_priv(shost);

 return !mutex_is_locked(&ctrl_info->scan_mutex);
}

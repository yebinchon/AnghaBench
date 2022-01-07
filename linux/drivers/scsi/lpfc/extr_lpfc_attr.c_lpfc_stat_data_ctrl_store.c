
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int stat_data_blocked; int stat_data_enabled; struct lpfc_hba* phba; } ;
struct lpfc_hba {unsigned long max_vports; unsigned long bucket_type; unsigned long bucket_base; unsigned long bucket_step; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_lock; scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 unsigned long LPFC_LINEAR_BUCKET ;
 int LPFC_MAX_DATA_CTRL_LEN ;
 unsigned long LPFC_NO_BUCKET ;
 unsigned long LPFC_POWER2_BUCKET ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int lpfc_alloc_bucket (struct lpfc_vport*) ;
 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 int lpfc_free_bucket (struct lpfc_vport*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_vport_reset_stat_data (struct lpfc_vport*) ;
 unsigned long simple_strtoul (char*,int *,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 int strncpy (char*,char const*,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static ssize_t
lpfc_stat_data_ctrl_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;

 static char bucket_data[1024];
 unsigned long i;
 char *str_ptr, *token;
 struct lpfc_vport **vports;
 struct Scsi_Host *v_shost;
 char *bucket_type_str, *base_str, *step_str;
 unsigned long base, step, bucket_type;

 if (!strncmp(buf, "setbucket", strlen("setbucket"))) {
  if (strlen(buf) > (1024 - 1))
   return -EINVAL;

  strncpy(bucket_data, buf, 1024);
  str_ptr = &bucket_data[0];

  token = strsep(&str_ptr, "\t ");
  if (!token)
   return -EINVAL;

  bucket_type_str = strsep(&str_ptr, "\t ");
  if (!bucket_type_str)
   return -EINVAL;

  if (!strncmp(bucket_type_str, "linear", strlen("linear")))
   bucket_type = LPFC_LINEAR_BUCKET;
  else if (!strncmp(bucket_type_str, "power2", strlen("power2")))
   bucket_type = LPFC_POWER2_BUCKET;
  else
   return -EINVAL;

  base_str = strsep(&str_ptr, "\t ");
  if (!base_str)
   return -EINVAL;
  base = simple_strtoul(base_str, ((void*)0), 0);

  step_str = strsep(&str_ptr, "\t ");
  if (!step_str)
   return -EINVAL;
  step = simple_strtoul(step_str, ((void*)0), 0);
  if (!step)
   return -EINVAL;


  vports = lpfc_create_vport_work_array(phba);
  if (vports == ((void*)0))
   return -ENOMEM;

  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++) {
   v_shost = lpfc_shost_from_vport(vports[i]);
   spin_lock_irq(v_shost->host_lock);

   vports[i]->stat_data_blocked = 1;
   if (vports[i]->stat_data_enabled)
    lpfc_vport_reset_stat_data(vports[i]);
   spin_unlock_irq(v_shost->host_lock);
  }


  phba->bucket_type = bucket_type;
  phba->bucket_base = base;
  phba->bucket_step = step;

  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++) {
   v_shost = lpfc_shost_from_vport(vports[i]);


   spin_lock_irq(v_shost->host_lock);
   vports[i]->stat_data_blocked = 0;
   spin_unlock_irq(v_shost->host_lock);
  }
  lpfc_destroy_vport_work_array(phba, vports);
  return strlen(buf);
 }

 if (!strncmp(buf, "destroybucket", strlen("destroybucket"))) {
  vports = lpfc_create_vport_work_array(phba);
  if (vports == ((void*)0))
   return -ENOMEM;

  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++) {
   v_shost = lpfc_shost_from_vport(vports[i]);
   spin_lock_irq(shost->host_lock);
   vports[i]->stat_data_blocked = 1;
   lpfc_free_bucket(vport);
   vport->stat_data_enabled = 0;
   vports[i]->stat_data_blocked = 0;
   spin_unlock_irq(shost->host_lock);
  }
  lpfc_destroy_vport_work_array(phba, vports);
  phba->bucket_type = LPFC_NO_BUCKET;
  phba->bucket_base = 0;
  phba->bucket_step = 0;
  return strlen(buf);
 }

 if (!strncmp(buf, "start", strlen("start"))) {

  if (phba->bucket_type == LPFC_NO_BUCKET)
   return -EINVAL;
  spin_lock_irq(shost->host_lock);
  if (vport->stat_data_enabled) {
   spin_unlock_irq(shost->host_lock);
   return strlen(buf);
  }
  lpfc_alloc_bucket(vport);
  vport->stat_data_enabled = 1;
  spin_unlock_irq(shost->host_lock);
  return strlen(buf);
 }

 if (!strncmp(buf, "stop", strlen("stop"))) {
  spin_lock_irq(shost->host_lock);
  if (vport->stat_data_enabled == 0) {
   spin_unlock_irq(shost->host_lock);
   return strlen(buf);
  }
  lpfc_free_bucket(vport);
  vport->stat_data_enabled = 0;
  spin_unlock_irq(shost->host_lock);
  return strlen(buf);
 }

 if (!strncmp(buf, "reset", strlen("reset"))) {
  if ((phba->bucket_type == LPFC_NO_BUCKET)
   || !vport->stat_data_enabled)
   return strlen(buf);
  spin_lock_irq(shost->host_lock);
  vport->stat_data_blocked = 1;
  lpfc_vport_reset_stat_data(vport);
  vport->stat_data_blocked = 0;
  spin_unlock_irq(shost->host_lock);
  return strlen(buf);
 }
 return -EINVAL;
}

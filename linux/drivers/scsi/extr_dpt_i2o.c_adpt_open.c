
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int unit; int in_use; struct TYPE_3__* next; } ;
typedef TYPE_1__ adpt_hba ;


 int ENXIO ;
 int adpt_configuration_lock ;
 int adpt_mutex ;
 TYPE_1__* hba_chain ;
 int hba_count ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adpt_open(struct inode *inode, struct file *file)
{
 int minor;
 adpt_hba* pHba;

 mutex_lock(&adpt_mutex);


 minor = iminor(inode);
 if (minor >= hba_count) {
  mutex_unlock(&adpt_mutex);
  return -ENXIO;
 }
 mutex_lock(&adpt_configuration_lock);
 for (pHba = hba_chain; pHba; pHba = pHba->next) {
  if (pHba->unit == minor) {
   break;
  }
 }
 if (pHba == ((void*)0)) {
  mutex_unlock(&adpt_configuration_lock);
  mutex_unlock(&adpt_mutex);
  return -ENXIO;
 }






 pHba->in_use = 1;
 mutex_unlock(&adpt_configuration_lock);
 mutex_unlock(&adpt_mutex);

 return 0;
}

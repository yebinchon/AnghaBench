
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int aen_queue_lock; int aen_queue; } ;
struct file {struct pmcraid_instance* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int pmcraid_chr_fasync(int fd, struct file *filep, int mode)
{
 struct pmcraid_instance *pinstance;
 int rc;

 pinstance = filep->private_data;
 mutex_lock(&pinstance->aen_queue_lock);
 rc = fasync_helper(fd, filep, mode, &pinstance->aen_queue);
 mutex_unlock(&pinstance->aen_queue_lock);

 return rc;
}

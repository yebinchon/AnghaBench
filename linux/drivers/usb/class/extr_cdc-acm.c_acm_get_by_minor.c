
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acm {int mutex; int port; scalar_t__ disconnected; } ;


 int acm_minors ;
 int acm_minors_lock ;
 struct acm* idr_find (int *,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_port_get (int *) ;

__attribute__((used)) static struct acm *acm_get_by_minor(unsigned int minor)
{
 struct acm *acm;

 mutex_lock(&acm_minors_lock);
 acm = idr_find(&acm_minors, minor);
 if (acm) {
  mutex_lock(&acm->mutex);
  if (acm->disconnected) {
   mutex_unlock(&acm->mutex);
   acm = ((void*)0);
  } else {
   tty_port_get(&acm->port);
   mutex_unlock(&acm->mutex);
  }
 }
 mutex_unlock(&acm_minors_lock);
 return acm;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acm {int minor; } ;


 int acm_minors ;
 int acm_minors_lock ;
 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void acm_release_minor(struct acm *acm)
{
 mutex_lock(&acm_minors_lock);
 idr_remove(&acm_minors, acm->minor);
 mutex_unlock(&acm_minors_lock);
}

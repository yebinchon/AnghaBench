
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acm {int dummy; } ;


 int ACM_TTY_MINORS ;
 int GFP_KERNEL ;
 int acm_minors ;
 int acm_minors_lock ;
 int idr_alloc (int *,struct acm*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acm_alloc_minor(struct acm *acm)
{
 int minor;

 mutex_lock(&acm_minors_lock);
 minor = idr_alloc(&acm_minors, acm, 0, ACM_TTY_MINORS, GFP_KERNEL);
 mutex_unlock(&acm_minors_lock);

 return minor;
}

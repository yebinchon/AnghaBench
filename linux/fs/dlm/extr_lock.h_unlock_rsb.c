
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static inline void unlock_rsb(struct dlm_rsb *r)
{
 mutex_unlock(&r->res_mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_mutex; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static inline void lock_rsb(struct dlm_rsb *r)
{
 mutex_lock(&r->res_mutex);
}

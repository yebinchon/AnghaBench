
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void hold_rsb(struct dlm_rsb *r)
{
 kref_get(&r->res_ref);
}

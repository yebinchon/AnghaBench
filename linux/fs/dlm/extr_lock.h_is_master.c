
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_nodeid; } ;



__attribute__((used)) static inline int is_master(struct dlm_rsb *r)
{
 return !r->res_nodeid;
}

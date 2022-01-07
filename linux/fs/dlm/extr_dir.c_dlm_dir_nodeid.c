
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_dir_nodeid; } ;



int dlm_dir_nodeid(struct dlm_rsb *r)
{
 return r->res_dir_nodeid;
}

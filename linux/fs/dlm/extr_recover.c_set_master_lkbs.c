
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_nodeid; int res_waitqueue; int res_convertqueue; int res_grantqueue; } ;


 int set_lock_master (int *,int ) ;

__attribute__((used)) static void set_master_lkbs(struct dlm_rsb *r)
{
 set_lock_master(&r->res_grantqueue, r->res_nodeid);
 set_lock_master(&r->res_convertqueue, r->res_nodeid);
 set_lock_master(&r->res_waitqueue, r->res_nodeid);
}

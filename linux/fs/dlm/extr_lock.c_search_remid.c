
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_rsb {int res_waitqueue; int res_convertqueue; int res_grantqueue; } ;
struct dlm_lkb {int dummy; } ;


 struct dlm_lkb* search_remid_list (int *,int,int ) ;

__attribute__((used)) static struct dlm_lkb *search_remid(struct dlm_rsb *r, int nodeid,
        uint32_t remid)
{
 struct dlm_lkb *lkb;

 lkb = search_remid_list(&r->res_grantqueue, nodeid, remid);
 if (lkb)
  return lkb;
 lkb = search_remid_list(&r->res_convertqueue, nodeid, remid);
 if (lkb)
  return lkb;
 lkb = search_remid_list(&r->res_waitqueue, nodeid, remid);
 if (lkb)
  return lkb;
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {scalar_t__ res_id; int res_length; int res_name; struct dlm_ls* res_ls; } ;
struct dlm_rcom {unsigned long rc_id; int rc_buf; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int dummy; } ;


 int DLM_RCOM_LOOKUP ;
 int create_rcom (struct dlm_ls*,int,int ,int ,struct dlm_rcom**,struct dlm_mhandle**) ;
 int memcpy (int ,int ,int ) ;
 int send_rcom (struct dlm_ls*,struct dlm_mhandle*,struct dlm_rcom*) ;

int dlm_send_rcom_lookup(struct dlm_rsb *r, int dir_nodeid)
{
 struct dlm_rcom *rc;
 struct dlm_mhandle *mh;
 struct dlm_ls *ls = r->res_ls;
 int error;

 error = create_rcom(ls, dir_nodeid, DLM_RCOM_LOOKUP, r->res_length,
       &rc, &mh);
 if (error)
  goto out;
 memcpy(rc->rc_buf, r->res_name, r->res_length);
 rc->rc_id = (unsigned long) r->res_id;

 send_rcom(ls, mh, rc);
 out:
 return error;
}

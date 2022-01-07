
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_rcom {int rc_id; int rc_buf; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int ls_recover_nodeid; int ls_recover_buf; } ;
struct TYPE_2__ {int ci_buffer_size; } ;


 int DLM_RCOM_NAMES ;
 int ETIMEDOUT ;
 int allow_sync_reply (struct dlm_ls*,int *) ;
 int create_rcom (struct dlm_ls*,int,int ,int,struct dlm_rcom**,struct dlm_mhandle**) ;
 int disallow_sync_reply (struct dlm_ls*) ;
 TYPE_1__ dlm_config ;
 int dlm_wait_function (struct dlm_ls*,int *) ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int ) ;
 int rcom_response ;
 int send_rcom (struct dlm_ls*,struct dlm_mhandle*,struct dlm_rcom*) ;

int dlm_rcom_names(struct dlm_ls *ls, int nodeid, char *last_name, int last_len)
{
 struct dlm_rcom *rc;
 struct dlm_mhandle *mh;
 int error = 0;

 ls->ls_recover_nodeid = nodeid;

retry:
 error = create_rcom(ls, nodeid, DLM_RCOM_NAMES, last_len, &rc, &mh);
 if (error)
  goto out;
 memcpy(rc->rc_buf, last_name, last_len);

 allow_sync_reply(ls, &rc->rc_id);
 memset(ls->ls_recover_buf, 0, dlm_config.ci_buffer_size);

 send_rcom(ls, mh, rc);

 error = dlm_wait_function(ls, &rcom_response);
 disallow_sync_reply(ls);
 if (error == -ETIMEDOUT)
  goto retry;
 out:
 return error;
}

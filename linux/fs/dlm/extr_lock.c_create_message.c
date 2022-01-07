
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_rsb {int res_length; TYPE_1__* res_ls; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_message {int dummy; } ;
struct dlm_lkb {int lkb_lvbptr; } ;
struct TYPE_2__ {int ls_lvblen; } ;
 int _create_message (TYPE_1__*,int,int,int,struct dlm_message**,struct dlm_mhandle**) ;

__attribute__((used)) static int create_message(struct dlm_rsb *r, struct dlm_lkb *lkb,
     int to_nodeid, int mstype,
     struct dlm_message **ms_ret,
     struct dlm_mhandle **mh_ret)
{
 int mb_len = sizeof(struct dlm_message);

 switch (mstype) {
 case 130:
 case 132:
 case 131:
  mb_len += r->res_length;
  break;
 case 135:
 case 128:
 case 129:
 case 134:
 case 133:
  if (lkb && lkb->lkb_lvbptr)
   mb_len += r->res_ls->ls_lvblen;
  break;
 }

 return _create_message(r->res_ls, mb_len, to_nodeid, mstype,
          ms_ret, mh_ret);
}

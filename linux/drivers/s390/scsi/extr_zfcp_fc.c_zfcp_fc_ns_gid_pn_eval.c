
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct zfcp_fsf_ct_els {TYPE_4__* port; scalar_t__ status; } ;
struct TYPE_10__ {int fp_fid; } ;
struct TYPE_8__ {scalar_t__ ct_cmd; } ;
struct zfcp_fc_gid_pn_rsp {TYPE_5__ gid_pn; TYPE_3__ ct_hdr; } ;
struct TYPE_6__ {struct zfcp_fc_gid_pn_rsp rsp; } ;
struct TYPE_7__ {TYPE_1__ gid_pn; } ;
struct zfcp_fc_req {TYPE_2__ u; struct zfcp_fsf_ct_els ct_els; } ;
struct TYPE_9__ {int d_id; } ;


 int FC_FS_ACC ;
 scalar_t__ cpu_to_be16 (int ) ;
 int ntoh24 (int ) ;

__attribute__((used)) static void zfcp_fc_ns_gid_pn_eval(struct zfcp_fc_req *fc_req)
{
 struct zfcp_fsf_ct_els *ct_els = &fc_req->ct_els;
 struct zfcp_fc_gid_pn_rsp *gid_pn_rsp = &fc_req->u.gid_pn.rsp;

 if (ct_els->status)
  return;
 if (gid_pn_rsp->ct_hdr.ct_cmd != cpu_to_be16(FC_FS_ACC))
  return;


 ct_els->port->d_id = ntoh24(gid_pn_rsp->gid_pn.fp_fid);
}

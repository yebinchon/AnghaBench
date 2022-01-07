
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zfcp_fsf_req {struct zfcp_fsf_ct_els* data; } ;
struct zfcp_fsf_ct_els {scalar_t__ d_id; scalar_t__ status; struct scatterlist* resp; struct scatterlist* req; } ;
struct scatterlist {int dummy; } ;
struct fc_ns_gid_ft {scalar_t__ fn_resvd; scalar_t__ fn_domain_id_scope; scalar_t__ fn_area_id_scope; scalar_t__ fn_fc4_type; } ;
struct fc_gpn_ft_resp {int fp_flags; } ;
struct fc_ct_hdr {scalar_t__ ct_rev; scalar_t__* ct_in_id; scalar_t__ ct_fs_type; scalar_t__ ct_fs_subtype; scalar_t__ ct_options; scalar_t__ _ct_resvd1; scalar_t__ ct_cmd; scalar_t__ _ct_resvd2; scalar_t__ ct_reason; scalar_t__ ct_explan; scalar_t__ ct_vendor; int ct_mr_size; } ;


 int FC_CT_HDR_LEN ;
 scalar_t__ FC_CT_REV ;
 scalar_t__ FC_FID_DIR_SERV ;
 scalar_t__ FC_FST_DIR ;
 int FC_FS_ACC ;
 int FC_NS_FID_LAST ;
 int FC_NS_GPN_FT ;
 scalar_t__ FC_NS_SUBTYPE ;
 scalar_t__ FC_TYPE_FCP ;
 int ZFCP_DBF_SAN_MAX_PAYLOAD ;
 int ZFCP_FC_GPN_FT_ENT_PAGE ;
 int be16_to_cpu (int ) ;
 scalar_t__ cpu_to_be16 (int ) ;
 int max (int ,int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int min (int ,int ) ;
 void* sg_virt (struct scatterlist*) ;

__attribute__((used)) static u16 zfcp_dbf_san_res_cap_len_if_gpn_ft(char *tag,
           struct zfcp_fsf_req *fsf,
           u16 len)
{
 struct zfcp_fsf_ct_els *ct_els = fsf->data;
 struct fc_ct_hdr *reqh = sg_virt(ct_els->req);
 struct fc_ns_gid_ft *reqn = (struct fc_ns_gid_ft *)(reqh + 1);
 struct scatterlist *resp_entry = ct_els->resp;
 struct fc_ct_hdr *resph;
 struct fc_gpn_ft_resp *acc;
 int max_entries, x, last = 0;

 if (!(memcmp(tag, "fsscth2", 7) == 0
       && ct_els->d_id == FC_FID_DIR_SERV
       && reqh->ct_rev == FC_CT_REV
       && reqh->ct_in_id[0] == 0
       && reqh->ct_in_id[1] == 0
       && reqh->ct_in_id[2] == 0
       && reqh->ct_fs_type == FC_FST_DIR
       && reqh->ct_fs_subtype == FC_NS_SUBTYPE
       && reqh->ct_options == 0
       && reqh->_ct_resvd1 == 0
       && reqh->ct_cmd == cpu_to_be16(FC_NS_GPN_FT)

       && reqh->_ct_resvd2 == 0
       && reqh->ct_reason == 0
       && reqh->ct_explan == 0
       && reqh->ct_vendor == 0
       && reqn->fn_resvd == 0
       && reqn->fn_domain_id_scope == 0
       && reqn->fn_area_id_scope == 0
       && reqn->fn_fc4_type == FC_TYPE_FCP))
  return len;

 acc = sg_virt(resp_entry);


 resph = (struct fc_ct_hdr *)acc;
 if ((ct_els->status) ||
     (resph->ct_cmd != cpu_to_be16(FC_FS_ACC)))
  return max(FC_CT_HDR_LEN, ZFCP_DBF_SAN_MAX_PAYLOAD);

 max_entries = (be16_to_cpu(reqh->ct_mr_size) * 4 /
         sizeof(struct fc_gpn_ft_resp))
  + 1 ;





 for (x = 1; x < max_entries && !last; x++) {
  if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
   acc++;
  else
   acc = sg_virt(++resp_entry);

  last = acc->fp_flags & FC_NS_FID_LAST;
 }
 len = min(len, (u16)(x * sizeof(struct fc_gpn_ft_resp)));
 return len;
}

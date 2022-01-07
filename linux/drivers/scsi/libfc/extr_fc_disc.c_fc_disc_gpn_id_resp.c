
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct fc_seq {int dummy; } ;
struct TYPE_2__ {int port_name; int port_id; } ;
struct fc_rport_priv {int kref; int rp_mutex; int disc_id; TYPE_1__ ids; struct fc_lport* local_port; } ;
struct fc_ns_gid_pn {int fn_wwpn; } ;
struct fc_disc {int disc_mutex; int disc_id; } ;
struct fc_lport {struct fc_disc disc; } ;
struct fc_frame_header {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {int ct_cmd; int ct_explan; int ct_reason; } ;


 int FC_DISC_DBG (struct fc_disc*,char*,scalar_t__,...) ;
 int FC_EX_CLOSED ;
 scalar_t__ FC_FS_ACC ;
 scalar_t__ FC_FS_RJT ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 int PTR_ERR (struct fc_frame*) ;
 int fc_disc_restart (struct fc_disc*) ;
 struct fc_ct_hdr* fc_frame_payload_get (struct fc_frame*,int) ;
 struct fc_rport_priv* fc_rport_create (struct fc_lport*,int ) ;
 int fc_rport_destroy ;
 int fc_rport_login (struct fc_rport_priv*) ;
 int fc_rport_logoff (struct fc_rport_priv*) ;
 int fr_len (struct fc_frame*) ;
 int get_unaligned_be64 (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void fc_disc_gpn_id_resp(struct fc_seq *sp, struct fc_frame *fp,
    void *rdata_arg)
{
 struct fc_rport_priv *rdata = rdata_arg;
 struct fc_rport_priv *new_rdata;
 struct fc_lport *lport;
 struct fc_disc *disc;
 struct fc_ct_hdr *cp;
 struct fc_ns_gid_pn *pn;
 u64 port_name;

 lport = rdata->local_port;
 disc = &lport->disc;

 if (PTR_ERR(fp) == -FC_EX_CLOSED)
  goto out;
 if (IS_ERR(fp))
  goto redisc;

 cp = fc_frame_payload_get(fp, sizeof(*cp));
 if (!cp)
  goto redisc;
 if (ntohs(cp->ct_cmd) == FC_FS_ACC) {
  if (fr_len(fp) < sizeof(struct fc_frame_header) +
      sizeof(*cp) + sizeof(*pn))
   goto redisc;
  pn = (struct fc_ns_gid_pn *)(cp + 1);
  port_name = get_unaligned_be64(&pn->fn_wwpn);
  mutex_lock(&rdata->rp_mutex);
  if (rdata->ids.port_name == -1)
   rdata->ids.port_name = port_name;
  else if (rdata->ids.port_name != port_name) {
   FC_DISC_DBG(disc, "GPN_ID accepted.  WWPN changed. "
        "Port-id %6.6x wwpn %16.16llx\n",
        rdata->ids.port_id, port_name);
   mutex_unlock(&rdata->rp_mutex);
   fc_rport_logoff(rdata);
   mutex_lock(&lport->disc.disc_mutex);
   new_rdata = fc_rport_create(lport, rdata->ids.port_id);
   mutex_unlock(&lport->disc.disc_mutex);
   if (new_rdata) {
    new_rdata->disc_id = disc->disc_id;
    fc_rport_login(new_rdata);
   }
   goto out;
  }
  rdata->disc_id = disc->disc_id;
  mutex_unlock(&rdata->rp_mutex);
  fc_rport_login(rdata);
 } else if (ntohs(cp->ct_cmd) == FC_FS_RJT) {
  FC_DISC_DBG(disc, "GPN_ID rejected reason %x exp %x\n",
       cp->ct_reason, cp->ct_explan);
  fc_rport_logoff(rdata);
 } else {
  FC_DISC_DBG(disc, "GPN_ID unexpected response code %x\n",
       ntohs(cp->ct_cmd));
redisc:
  mutex_lock(&disc->disc_mutex);
  fc_disc_restart(disc);
  mutex_unlock(&disc->disc_mutex);
 }
out:
 kref_put(&rdata->kref, fc_rport_destroy);
}

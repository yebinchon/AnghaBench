
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct qedf_ctx {scalar_t__ vlan_id; int fipvlan_compl; int dbg_ctx; int link_state; } ;
struct fip_vlan_desc {int fd_vlan; } ;
struct fip_header {int fip_dl_len; } ;
struct fip_desc {size_t fip_dlen; int fip_dtype; } ;
typedef size_t ssize_t ;


 int ETH_ALEN ;
 size_t FIP_BPW ;

 int QEDF_INFO (int *,int ,char*,...) ;
 scalar_t__ QEDF_LINK_DOWN ;
 int QEDF_LOG_DISC ;
 scalar_t__ atomic_read (int *) ;
 int complete (int *) ;
 int completion_done (int *) ;
 int ntohs (int ) ;
 int qedf_set_vlan_id (struct qedf_ctx*,scalar_t__) ;

__attribute__((used)) static void qedf_fcoe_process_vlan_resp(struct qedf_ctx *qedf,
 struct sk_buff *skb)
{
 struct fip_header *fiph;
 struct fip_desc *desc;
 u16 vid = 0;
 ssize_t rlen;
 size_t dlen;

 fiph = (struct fip_header *)(((void *)skb->data) + 2 * ETH_ALEN + 2);

 rlen = ntohs(fiph->fip_dl_len) * 4;
 desc = (struct fip_desc *)(fiph + 1);
 while (rlen > 0) {
  dlen = desc->fip_dlen * FIP_BPW;
  switch (desc->fip_dtype) {
  case 128:
   vid = ntohs(((struct fip_vlan_desc *)desc)->fd_vlan);
   break;
  }
  desc = (struct fip_desc *)((char *)desc + dlen);
  rlen -= dlen;
 }

 if (atomic_read(&qedf->link_state) == QEDF_LINK_DOWN) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_DISC,
     "Dropping VLAN response as link is down.\n");
  return;
 }

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC, "VLAN response, "
     "vid=0x%x.\n", vid);

 if (vid > 0 && qedf->vlan_id != vid) {
  qedf_set_vlan_id(qedf, vid);


  if (!completion_done(&qedf->fipvlan_compl))
   complete(&qedf->fipvlan_compl);
 }
}

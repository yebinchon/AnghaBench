
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_scsi_cmd {void* tvc_prot_sgl; void* tvc_upages; void* tvc_sgl; } ;
struct se_session {scalar_t__ sess_cmd_map; } ;
struct se_portal_group {int dummy; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int VHOST_SCSI_DEFAULT_TAGS ;
 int VHOST_SCSI_PREALLOC_PROT_SGLS ;
 int VHOST_SCSI_PREALLOC_SGLS ;
 int VHOST_SCSI_PREALLOC_UPAGES ;
 void* kcalloc (int ,int,int ) ;
 int pr_err (char*) ;
 int vhost_scsi_free_cmd_map_res (struct se_session*) ;

__attribute__((used)) static int vhost_scsi_nexus_cb(struct se_portal_group *se_tpg,
          struct se_session *se_sess, void *p)
{
 struct vhost_scsi_cmd *tv_cmd;
 unsigned int i;

 for (i = 0; i < VHOST_SCSI_DEFAULT_TAGS; i++) {
  tv_cmd = &((struct vhost_scsi_cmd *)se_sess->sess_cmd_map)[i];

  tv_cmd->tvc_sgl = kcalloc(VHOST_SCSI_PREALLOC_SGLS,
       sizeof(struct scatterlist),
       GFP_KERNEL);
  if (!tv_cmd->tvc_sgl) {
   pr_err("Unable to allocate tv_cmd->tvc_sgl\n");
   goto out;
  }

  tv_cmd->tvc_upages = kcalloc(VHOST_SCSI_PREALLOC_UPAGES,
          sizeof(struct page *),
          GFP_KERNEL);
  if (!tv_cmd->tvc_upages) {
   pr_err("Unable to allocate tv_cmd->tvc_upages\n");
   goto out;
  }

  tv_cmd->tvc_prot_sgl = kcalloc(VHOST_SCSI_PREALLOC_PROT_SGLS,
            sizeof(struct scatterlist),
            GFP_KERNEL);
  if (!tv_cmd->tvc_prot_sgl) {
   pr_err("Unable to allocate tv_cmd->tvc_prot_sgl\n");
   goto out;
  }
 }
 return 0;
out:
 vhost_scsi_free_cmd_map_res(se_sess);
 return -ENOMEM;
}

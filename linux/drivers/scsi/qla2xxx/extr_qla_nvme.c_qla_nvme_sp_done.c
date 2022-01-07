
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_private {int comp_status; } ;
struct TYPE_3__ {int cmd_kref; struct nvme_private* priv; } ;
typedef TYPE_1__ srb_t ;


 int kref_put (int *,int ) ;
 int qla_nvme_release_fcp_cmd_kref ;

__attribute__((used)) static void qla_nvme_sp_done(srb_t *sp, int res)
{
 struct nvme_private *priv = sp->priv;

 priv->comp_status = res;
 kref_put(&sp->cmd_kref, qla_nvme_release_fcp_cmd_kref);

 return;
}

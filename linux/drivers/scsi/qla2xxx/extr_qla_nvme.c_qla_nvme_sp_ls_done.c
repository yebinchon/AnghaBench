
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_private {int comp_status; int ls_work; } ;
struct TYPE_3__ {int cmd_kref; struct nvme_private* priv; } ;
typedef TYPE_1__ srb_t ;


 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ kref_read (int *) ;
 int qla_nvme_ls_complete ;
 int schedule_work (int *) ;

__attribute__((used)) static void qla_nvme_sp_ls_done(srb_t *sp, int res)
{
 struct nvme_private *priv = sp->priv;

 if (WARN_ON_ONCE(kref_read(&sp->cmd_kref) == 0))
  return;

 if (res)
  res = -EINVAL;

 priv->comp_status = res;
 INIT_WORK(&priv->ls_work, qla_nvme_ls_complete);
 schedule_work(&priv->ls_work);
}

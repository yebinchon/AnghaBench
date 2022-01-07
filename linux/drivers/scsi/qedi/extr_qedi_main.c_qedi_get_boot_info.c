
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qedi_nvm_iscsi_image {int dummy; } ;
struct qedi_ctx {int dbg_ctx; scalar_t__ iscsi_image; int cdev; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* nvm_get_image ) (int ,int ,char*,int) ;} ;


 int QEDI_ERR (int *,char*,int) ;
 int QEDI_INFO (int *,int ,char*) ;
 int QEDI_LOG_INFO ;
 int QED_NVM_IMAGE_ISCSI_CFG ;
 TYPE_2__* qedi_ops ;
 int stub1 (int ,int ,char*,int) ;

__attribute__((used)) static int qedi_get_boot_info(struct qedi_ctx *qedi)
{
 int ret = 1;

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_INFO,
    "Get NVM iSCSI CFG image\n");
 ret = qedi_ops->common->nvm_get_image(qedi->cdev,
           QED_NVM_IMAGE_ISCSI_CFG,
           (char *)qedi->iscsi_image,
           sizeof(struct qedi_nvm_iscsi_image));
 if (ret)
  QEDI_ERR(&qedi->dbg_ctx,
    "Could not get NVM image. ret = %d\n", ret);

 return ret;
}

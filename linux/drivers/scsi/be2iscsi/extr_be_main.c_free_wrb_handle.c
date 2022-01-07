
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wrb_handle {int dummy; } ;
struct hwi_wrb_context {int wrb_handles_available; int free_index; } ;
struct TYPE_2__ {int wrbs_per_cxn; } ;
struct beiscsi_hba {TYPE_1__ params; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_IO ;
 int KERN_INFO ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*,struct wrb_handle*,int ,int ) ;
 int beiscsi_put_wrb_handle (struct hwi_wrb_context*,struct wrb_handle*,int ) ;

__attribute__((used)) static void
free_wrb_handle(struct beiscsi_hba *phba, struct hwi_wrb_context *pwrb_context,
  struct wrb_handle *pwrb_handle)
{
 beiscsi_put_wrb_handle(pwrb_context,
          pwrb_handle,
          phba->params.wrbs_per_cxn);
 beiscsi_log(phba, KERN_INFO,
      BEISCSI_LOG_IO | BEISCSI_LOG_CONFIG,
      "BM_%d : FREE WRB: pwrb_handle=%p free_index=0x%x"
      "wrb_handles_available=%d\n",
      pwrb_handle, pwrb_context->free_index,
      pwrb_context->wrb_handles_available);
}

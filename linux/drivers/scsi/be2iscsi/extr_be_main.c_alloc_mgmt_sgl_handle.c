
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sgl_handle {int dummy; } ;
struct TYPE_2__ {int icds_per_ctrl; int ios_per_ctrl; } ;
struct beiscsi_hba {size_t eh_sgl_alloc_index; int mgmt_sgl_lock; TYPE_1__ params; scalar_t__ eh_sgl_hndl_avbl; struct sgl_handle** eh_sgl_hndl_base; } ;


 int BEISCSI_LOG_CONFIG ;
 int KERN_INFO ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,size_t,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct sgl_handle *alloc_mgmt_sgl_handle(struct beiscsi_hba *phba)
{
 struct sgl_handle *psgl_handle;
 unsigned long flags;

 spin_lock_irqsave(&phba->mgmt_sgl_lock, flags);
 if (phba->eh_sgl_hndl_avbl) {
  psgl_handle = phba->eh_sgl_hndl_base[phba->eh_sgl_alloc_index];
  phba->eh_sgl_hndl_base[phba->eh_sgl_alloc_index] = ((void*)0);
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
       "BM_%d : mgmt_sgl_alloc_index=%d=0x%x\n",
       phba->eh_sgl_alloc_index,
       phba->eh_sgl_alloc_index);

  phba->eh_sgl_hndl_avbl--;
  if (phba->eh_sgl_alloc_index ==
      (phba->params.icds_per_ctrl - phba->params.ios_per_ctrl -
       1))
   phba->eh_sgl_alloc_index = 0;
  else
   phba->eh_sgl_alloc_index++;
 } else
  psgl_handle = ((void*)0);
 spin_unlock_irqrestore(&phba->mgmt_sgl_lock, flags);
 return psgl_handle;
}

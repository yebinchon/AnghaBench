
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sgl_handle {int dummy; } ;
struct TYPE_2__ {int ios_per_ctrl; } ;
struct beiscsi_hba {size_t io_sgl_alloc_index; int io_sgl_lock; TYPE_1__ params; scalar_t__ io_sgl_hndl_avbl; struct sgl_handle** io_sgl_hndl_base; } ;


 int BEISCSI_LOG_IO ;
 int KERN_INFO ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct sgl_handle *alloc_io_sgl_handle(struct beiscsi_hba *phba)
{
 struct sgl_handle *psgl_handle;
 unsigned long flags;

 spin_lock_irqsave(&phba->io_sgl_lock, flags);
 if (phba->io_sgl_hndl_avbl) {
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_IO,
       "BM_%d : In alloc_io_sgl_handle,"
       " io_sgl_alloc_index=%d\n",
       phba->io_sgl_alloc_index);

  psgl_handle = phba->io_sgl_hndl_base[phba->
      io_sgl_alloc_index];
  phba->io_sgl_hndl_base[phba->io_sgl_alloc_index] = ((void*)0);
  phba->io_sgl_hndl_avbl--;
  if (phba->io_sgl_alloc_index == (phba->params.
       ios_per_ctrl - 1))
   phba->io_sgl_alloc_index = 0;
  else
   phba->io_sgl_alloc_index++;
 } else
  psgl_handle = ((void*)0);
 spin_unlock_irqrestore(&phba->io_sgl_lock, flags);
 return psgl_handle;
}

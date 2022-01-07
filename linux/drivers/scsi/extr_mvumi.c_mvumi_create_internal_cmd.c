
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mvumi_hba {int ib_max_size; TYPE_1__* pdev; } ;
struct mvumi_cmd {TYPE_2__* frame; int frame_phys; int queue_pointer; } ;
struct TYPE_5__ {scalar_t__ sg_counts; } ;
struct TYPE_4__ {int dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (int *,char*,...) ;
 TYPE_2__* dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,TYPE_2__*,int ) ;
 int kfree (struct mvumi_cmd*) ;
 struct mvumi_cmd* kzalloc (int,int ) ;
 scalar_t__ mvumi_internal_cmd_sgl (struct mvumi_hba*,struct mvumi_cmd*,unsigned int) ;

__attribute__((used)) static struct mvumi_cmd *mvumi_create_internal_cmd(struct mvumi_hba *mhba,
    unsigned int buf_size)
{
 struct mvumi_cmd *cmd;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  dev_err(&mhba->pdev->dev, "failed to create a internal cmd\n");
  return ((void*)0);
 }
 INIT_LIST_HEAD(&cmd->queue_pointer);

 cmd->frame = dma_alloc_coherent(&mhba->pdev->dev, mhba->ib_max_size,
   &cmd->frame_phys, GFP_KERNEL);
 if (!cmd->frame) {
  dev_err(&mhba->pdev->dev, "failed to allocate memory for FW"
   " frame,size = %d.\n", mhba->ib_max_size);
  kfree(cmd);
  return ((void*)0);
 }

 if (buf_size) {
  if (mvumi_internal_cmd_sgl(mhba, cmd, buf_size)) {
   dev_err(&mhba->pdev->dev, "failed to allocate memory"
      " for internal frame\n");
   dma_free_coherent(&mhba->pdev->dev, mhba->ib_max_size,
     cmd->frame, cmd->frame_phys);
   kfree(cmd);
   return ((void*)0);
  }
 } else
  cmd->frame->sg_counts = 0;

 return cmd;
}

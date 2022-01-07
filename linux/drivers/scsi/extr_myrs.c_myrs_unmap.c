
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct myrs_hba {int stat_mbox_size; int cmd_mbox_size; int * first_cmd_mbox; int cmd_mbox_addr; TYPE_1__* pdev; int * first_stat_mbox; int stat_mbox_addr; int * fwstat_buf; int fwstat_addr; int ctlr_info; int event_buf; } ;
struct myrs_fwstat {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int,int *,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void myrs_unmap(struct myrs_hba *cs)
{
 kfree(cs->event_buf);
 kfree(cs->ctlr_info);
 if (cs->fwstat_buf) {
  dma_free_coherent(&cs->pdev->dev, sizeof(struct myrs_fwstat),
      cs->fwstat_buf, cs->fwstat_addr);
  cs->fwstat_buf = ((void*)0);
 }
 if (cs->first_stat_mbox) {
  dma_free_coherent(&cs->pdev->dev, cs->stat_mbox_size,
      cs->first_stat_mbox, cs->stat_mbox_addr);
  cs->first_stat_mbox = ((void*)0);
 }
 if (cs->first_cmd_mbox) {
  dma_free_coherent(&cs->pdev->dev, cs->cmd_mbox_size,
      cs->first_cmd_mbox, cs->cmd_mbox_addr);
  cs->first_cmd_mbox = ((void*)0);
 }
}

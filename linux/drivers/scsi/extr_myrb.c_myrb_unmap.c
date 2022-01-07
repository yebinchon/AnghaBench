
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct myrb_ldev_info {int dummy; } ;
struct myrb_hba {int stat_mbox_size; int cmd_mbox_size; int * first_cmd_mbox; int cmd_mbox_addr; TYPE_1__* pdev; int * first_stat_mbox; int stat_mbox_addr; int * enquiry; int enquiry_addr; int * err_table; int err_table_addr; int * ldev_info_buf; int ldev_info_addr; } ;
struct myrb_error_entry {int dummy; } ;
struct myrb_enquiry {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int MYRB_MAX_CHANNELS ;
 int MYRB_MAX_LDEVS ;
 int MYRB_MAX_TARGETS ;
 int dma_free_coherent (int *,int,int *,int ) ;

__attribute__((used)) static void myrb_unmap(struct myrb_hba *cb)
{
 if (cb->ldev_info_buf) {
  size_t ldev_info_size = sizeof(struct myrb_ldev_info) *
   MYRB_MAX_LDEVS;
  dma_free_coherent(&cb->pdev->dev, ldev_info_size,
      cb->ldev_info_buf, cb->ldev_info_addr);
  cb->ldev_info_buf = ((void*)0);
 }
 if (cb->err_table) {
  size_t err_table_size = sizeof(struct myrb_error_entry) *
   MYRB_MAX_CHANNELS * MYRB_MAX_TARGETS;
  dma_free_coherent(&cb->pdev->dev, err_table_size,
      cb->err_table, cb->err_table_addr);
  cb->err_table = ((void*)0);
 }
 if (cb->enquiry) {
  dma_free_coherent(&cb->pdev->dev, sizeof(struct myrb_enquiry),
      cb->enquiry, cb->enquiry_addr);
  cb->enquiry = ((void*)0);
 }
 if (cb->first_stat_mbox) {
  dma_free_coherent(&cb->pdev->dev, cb->stat_mbox_size,
      cb->first_stat_mbox, cb->stat_mbox_addr);
  cb->first_stat_mbox = ((void*)0);
 }
 if (cb->first_cmd_mbox) {
  dma_free_coherent(&cb->pdev->dev, cb->cmd_mbox_size,
      cb->first_cmd_mbox, cb->cmd_mbox_addr);
  cb->first_cmd_mbox = ((void*)0);
 }
}

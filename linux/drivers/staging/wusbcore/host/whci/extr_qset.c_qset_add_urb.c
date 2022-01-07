
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct whc_urb {int dequeue_work; struct urb* urb; struct whc_qset* qset; } ;
struct whc_std {size_t dma_addr; size_t len; int ntds_remaining; } ;
struct whc_qset {int dummy; } ;
struct whc {int dummy; } ;
struct urb {int transfer_buffer_length; size_t transfer_dma; scalar_t__ num_sgs; struct whc_urb* hcpriv; } ;
typedef int gfp_t ;


 int DIV_ROUND_UP (int,size_t) ;
 int EINVAL ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 size_t QTD_MAX_XFER_SIZE ;
 struct whc_urb* kzalloc (int,int ) ;
 int qset_add_urb_sg (struct whc*,struct whc_qset*,struct urb*,int ) ;
 int qset_add_urb_sg_linearize (struct whc*,struct whc_qset*,struct urb*,int ) ;
 scalar_t__ qset_fill_page_list (struct whc*,struct whc_std*,int ) ;
 int qset_free_stds (struct whc_qset*,struct urb*) ;
 struct whc_std* qset_new_std (struct whc*,struct whc_qset*,struct urb*,int ) ;
 int urb_dequeue_work ;

int qset_add_urb(struct whc *whc, struct whc_qset *qset, struct urb *urb,
 gfp_t mem_flags)
{
 struct whc_urb *wurb;
 int remaining = urb->transfer_buffer_length;
 u64 transfer_dma = urb->transfer_dma;
 int ntds_remaining;
 int ret;

 wurb = kzalloc(sizeof(struct whc_urb), mem_flags);
 if (wurb == ((void*)0))
  goto err_no_mem;
 urb->hcpriv = wurb;
 wurb->qset = qset;
 wurb->urb = urb;
 INIT_WORK(&wurb->dequeue_work, urb_dequeue_work);

 if (urb->num_sgs) {
  ret = qset_add_urb_sg(whc, qset, urb, mem_flags);
  if (ret == -EINVAL) {
   qset_free_stds(qset, urb);
   ret = qset_add_urb_sg_linearize(whc, qset, urb, mem_flags);
  }
  if (ret < 0)
   goto err_no_mem;
  return 0;
 }

 ntds_remaining = DIV_ROUND_UP(remaining, QTD_MAX_XFER_SIZE);
 if (ntds_remaining == 0)
  ntds_remaining = 1;

 while (ntds_remaining) {
  struct whc_std *std;
  size_t std_len;

  std_len = remaining;
  if (std_len > QTD_MAX_XFER_SIZE)
   std_len = QTD_MAX_XFER_SIZE;

  std = qset_new_std(whc, qset, urb, mem_flags);
  if (std == ((void*)0))
   goto err_no_mem;

  std->dma_addr = transfer_dma;
  std->len = std_len;
  std->ntds_remaining = ntds_remaining;

  if (qset_fill_page_list(whc, std, mem_flags) < 0)
   goto err_no_mem;

  ntds_remaining--;
  remaining -= std_len;
  transfer_dma += std_len;
 }

 return 0;

err_no_mem:
 qset_free_stds(qset, urb);
 return -ENOMEM;
}

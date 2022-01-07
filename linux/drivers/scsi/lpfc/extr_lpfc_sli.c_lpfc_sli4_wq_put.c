
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lpfc_register {scalar_t__ word0; } ;
struct TYPE_4__ {struct lpfc_register wqe_com; } ;
union lpfc_wqe128 {TYPE_1__ generic; } ;
typedef union lpfc_wqe {int dummy; } lpfc_wqe ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ u32 ;
struct lpfc_queue {int host_index; int entry_count; scalar_t__ hba_index; int notify_interval; int queue_id; scalar_t__ entry_size; scalar_t__ dpp_regaddr; scalar_t__ db_format; int dpp_id; int db_regaddr; TYPE_3__* phba; scalar_t__ dpp_enable; int WQ_posted; int WQ_overflow; } ;
struct TYPE_5__ {int sli_intf; } ;
struct TYPE_6__ {int sli3_options; TYPE_2__ sli4_hba; scalar_t__ cfg_enable_dpp; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ LPFC_DB_LIST_FORMAT ;
 scalar_t__ LPFC_DB_RING_FORMAT ;
 int LPFC_SLI4_PHWQ_ENABLED ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_6 ;
 int __raw_writel (scalar_t__,scalar_t__) ;
 int __raw_writeq (int ,scalar_t__) ;
 scalar_t__ bf_get (int ,int *) ;
 int bf_set (int ,struct lpfc_register*,int) ;
 int lpfc_if6_wq_db_list_fm_dpp ;
 int lpfc_if6_wq_db_list_fm_dpp_id ;
 int lpfc_if6_wq_db_list_fm_id ;
 int lpfc_if6_wq_db_list_fm_num_posted ;
 int lpfc_sli4_pcimem_bcopy (union lpfc_wqe128*,union lpfc_wqe*,scalar_t__) ;
 union lpfc_wqe* lpfc_sli4_qe (struct lpfc_queue*,int) ;
 int lpfc_sli_intf_if_type ;
 int lpfc_wq_db_list_fm_id ;
 int lpfc_wq_db_list_fm_index ;
 int lpfc_wq_db_list_fm_num_posted ;
 int lpfc_wq_db_ring_fm_id ;
 int lpfc_wq_db_ring_fm_num_posted ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int wqe_wqec ;
 int wqe_wqid ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static int
lpfc_sli4_wq_put(struct lpfc_queue *q, union lpfc_wqe128 *wqe)
{
 union lpfc_wqe *temp_wqe;
 struct lpfc_register doorbell;
 uint32_t host_index;
 uint32_t idx;
 uint32_t i = 0;
 uint8_t *tmp;
 u32 if_type;


 if (unlikely(!q))
  return -ENOMEM;
 temp_wqe = lpfc_sli4_qe(q, q->host_index);


 idx = ((q->host_index + 1) % q->entry_count);
 if (idx == q->hba_index) {
  q->WQ_overflow++;
  return -EBUSY;
 }
 q->WQ_posted++;

 if (!((q->host_index + 1) % q->notify_interval))
  bf_set(wqe_wqec, &wqe->generic.wqe_com, 1);
 else
  bf_set(wqe_wqec, &wqe->generic.wqe_com, 0);
 if (q->phba->sli3_options & LPFC_SLI4_PHWQ_ENABLED)
  bf_set(wqe_wqid, &wqe->generic.wqe_com, q->queue_id);
 lpfc_sli4_pcimem_bcopy(wqe, temp_wqe, q->entry_size);
 if (q->dpp_enable && q->phba->cfg_enable_dpp) {

  tmp = (uint8_t *)temp_wqe;





  for (i = 0; i < q->entry_size; i += sizeof(uint32_t))
   __raw_writel(*((uint32_t *)(tmp + i)),
     q->dpp_regaddr + i);

 }

 wmb();


 host_index = q->host_index;

 q->host_index = idx;


 doorbell.word0 = 0;
 if (q->db_format == LPFC_DB_LIST_FORMAT) {
  if (q->dpp_enable && q->phba->cfg_enable_dpp) {
   bf_set(lpfc_if6_wq_db_list_fm_num_posted, &doorbell, 1);
   bf_set(lpfc_if6_wq_db_list_fm_dpp, &doorbell, 1);
   bf_set(lpfc_if6_wq_db_list_fm_dpp_id, &doorbell,
       q->dpp_id);
   bf_set(lpfc_if6_wq_db_list_fm_id, &doorbell,
       q->queue_id);
  } else {
   bf_set(lpfc_wq_db_list_fm_num_posted, &doorbell, 1);
   bf_set(lpfc_wq_db_list_fm_id, &doorbell, q->queue_id);


   if_type = bf_get(lpfc_sli_intf_if_type,
      &q->phba->sli4_hba.sli_intf);
   if (if_type != LPFC_SLI_INTF_IF_TYPE_6)
    bf_set(lpfc_wq_db_list_fm_index, &doorbell,
           host_index);
  }
 } else if (q->db_format == LPFC_DB_RING_FORMAT) {
  bf_set(lpfc_wq_db_ring_fm_num_posted, &doorbell, 1);
  bf_set(lpfc_wq_db_ring_fm_id, &doorbell, q->queue_id);
 } else {
  return -EINVAL;
 }
 writel(doorbell.word0, q->db_regaddr);

 return 0;
}

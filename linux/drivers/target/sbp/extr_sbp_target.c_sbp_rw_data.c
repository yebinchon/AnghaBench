
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct sg_mapping_iter {int consumed; int addr; scalar_t__ length; } ;
struct TYPE_6__ {scalar_t__ data_direction; int data_length; int t_data_nents; int t_data_sg; } ;
struct TYPE_5__ {int data_descriptor; int misc; } ;
struct sbp_target_request {TYPE_3__ se_cmd; TYPE_2__ orb; struct sbp_page_table_entry* pg_tbl; TYPE_1__* login; } ;
struct sbp_session {int node_id; int generation; int lock; int card; } ;
struct sbp_page_table_entry {int segment_length; int segment_base_lo; int segment_base_hi; } ;
struct fw_card {int dummy; } ;
struct TYPE_4__ {struct sbp_session* sess; } ;


 int CMDBLK_ORB_DATA_SIZE (int) ;
 int CMDBLK_ORB_MAX_PAYLOAD (int) ;
 int CMDBLK_ORB_PG_SIZE (int) ;
 int CMDBLK_ORB_SPEED (int) ;
 scalar_t__ DMA_FROM_DEVICE ;
 int EIO ;
 int RCODE_COMPLETE ;
 int SG_MITER_FROM_SG ;
 int SG_MITER_TO_SG ;
 int TCODE_READ_BLOCK_REQUEST ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int WARN_ON (int) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 struct fw_card* fw_card_get (int ) ;
 int fw_card_put (struct fw_card*) ;
 int min3 (int,int,int) ;
 int pr_err (char*) ;
 unsigned long long sbp2_pointer_to_addr (int *) ;
 int sbp_run_transaction (struct fw_card*,int,int,int,int,unsigned long long,int ,int) ;
 int sg_miter_next (struct sg_mapping_iter*) ;
 int sg_miter_start (struct sg_mapping_iter*,int ,int ,int) ;
 int sg_miter_stop (struct sg_mapping_iter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int sbp_rw_data(struct sbp_target_request *req)
{
 struct sbp_session *sess = req->login->sess;
 int tcode, sg_miter_flags, max_payload, pg_size, speed, node_id,
  generation, num_pte, length, tfr_length,
  rcode = RCODE_COMPLETE;
 struct sbp_page_table_entry *pte;
 unsigned long long offset;
 struct fw_card *card;
 struct sg_mapping_iter iter;

 if (req->se_cmd.data_direction == DMA_FROM_DEVICE) {
  tcode = TCODE_WRITE_BLOCK_REQUEST;
  sg_miter_flags = SG_MITER_FROM_SG;
 } else {
  tcode = TCODE_READ_BLOCK_REQUEST;
  sg_miter_flags = SG_MITER_TO_SG;
 }

 max_payload = 4 << CMDBLK_ORB_MAX_PAYLOAD(be32_to_cpu(req->orb.misc));
 speed = CMDBLK_ORB_SPEED(be32_to_cpu(req->orb.misc));

 pg_size = CMDBLK_ORB_PG_SIZE(be32_to_cpu(req->orb.misc));
 if (pg_size) {
  pr_err("sbp_run_transaction: page size ignored\n");
  pg_size = 0x100 << pg_size;
 }

 spin_lock_bh(&sess->lock);
 card = fw_card_get(sess->card);
 node_id = sess->node_id;
 generation = sess->generation;
 spin_unlock_bh(&sess->lock);

 if (req->pg_tbl) {
  pte = req->pg_tbl;
  num_pte = CMDBLK_ORB_DATA_SIZE(be32_to_cpu(req->orb.misc));

  offset = 0;
  length = 0;
 } else {
  pte = ((void*)0);
  num_pte = 0;

  offset = sbp2_pointer_to_addr(&req->orb.data_descriptor);
  length = req->se_cmd.data_length;
 }

 sg_miter_start(&iter, req->se_cmd.t_data_sg, req->se_cmd.t_data_nents,
  sg_miter_flags);

 while (length || num_pte) {
  if (!length) {
   offset = (u64)be16_to_cpu(pte->segment_base_hi) << 32 |
    be32_to_cpu(pte->segment_base_lo);
   length = be16_to_cpu(pte->segment_length);

   pte++;
   num_pte--;
  }

  sg_miter_next(&iter);

  tfr_length = min3(length, max_payload, (int)iter.length);



  rcode = sbp_run_transaction(card, tcode, node_id,
    generation, speed,
    offset, iter.addr, tfr_length);

  if (rcode != RCODE_COMPLETE)
   break;

  length -= tfr_length;
  offset += tfr_length;
  iter.consumed = tfr_length;
 }

 sg_miter_stop(&iter);
 fw_card_put(card);

 if (rcode == RCODE_COMPLETE) {
  WARN_ON(length != 0);
  return 0;
 } else {
  return -EIO;
 }
}

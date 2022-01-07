
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_descriptor; int misc; } ;
struct sbp_target_request {struct sbp_page_table_entry* pg_tbl; TYPE_1__ orb; } ;
struct sbp_page_table_entry {int dummy; } ;


 int CMDBLK_ORB_DATA_SIZE (int ) ;
 int CMDBLK_ORB_PG_TBL_PRESENT (int ) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RCODE_COMPLETE ;
 int TCODE_READ_BLOCK_REQUEST ;
 int be32_to_cpu (int ) ;
 int kfree (struct sbp_page_table_entry*) ;
 struct sbp_page_table_entry* kmalloc (int,int ) ;
 int sbp2_pointer_to_addr (int *) ;
 int sbp_run_request_transaction (struct sbp_target_request*,int ,int ,struct sbp_page_table_entry*,int) ;

__attribute__((used)) static int sbp_fetch_page_table(struct sbp_target_request *req)
{
 int pg_tbl_sz, ret;
 struct sbp_page_table_entry *pg_tbl;

 if (!CMDBLK_ORB_PG_TBL_PRESENT(be32_to_cpu(req->orb.misc)))
  return 0;

 pg_tbl_sz = CMDBLK_ORB_DATA_SIZE(be32_to_cpu(req->orb.misc)) *
  sizeof(struct sbp_page_table_entry);

 pg_tbl = kmalloc(pg_tbl_sz, GFP_KERNEL);
 if (!pg_tbl)
  return -ENOMEM;

 ret = sbp_run_request_transaction(req, TCODE_READ_BLOCK_REQUEST,
   sbp2_pointer_to_addr(&req->orb.data_descriptor),
   pg_tbl, pg_tbl_sz);
 if (ret != RCODE_COMPLETE) {
  kfree(pg_tbl);
  return -EIO;
 }

 req->pg_tbl = pg_tbl;
 return 0;
}

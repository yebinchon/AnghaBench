
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2i_hba {int max_sqes; int max_rqes; int max_cqes; int cnic_dev_type; } ;


 int BNX2I_CQE_SIZE ;
 int BNX2I_NX2_DEV_5706 ;
 int BNX2I_NX2_DEV_5708 ;
 int BNX2I_NX2_DEV_5709 ;
 int BNX2I_RQ_WQE_SIZE ;
 int BNX2I_SQ_WQE_SIZE ;
 int CNIC_PAGE_SIZE ;
 int is_power_of_2 (int) ;
 void* rounddown_pow_of_two (int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bnx2i_adjust_qp_size(struct bnx2i_hba *hba)
{
 u32 num_elements_per_pg;

 if (test_bit(BNX2I_NX2_DEV_5706, &hba->cnic_dev_type) ||
     test_bit(BNX2I_NX2_DEV_5708, &hba->cnic_dev_type) ||
     test_bit(BNX2I_NX2_DEV_5709, &hba->cnic_dev_type)) {
  if (!is_power_of_2(hba->max_sqes))
   hba->max_sqes = rounddown_pow_of_two(hba->max_sqes);

  if (!is_power_of_2(hba->max_rqes))
   hba->max_rqes = rounddown_pow_of_two(hba->max_rqes);
 }





 num_elements_per_pg = CNIC_PAGE_SIZE / BNX2I_SQ_WQE_SIZE;
 if (hba->max_sqes < num_elements_per_pg)
  hba->max_sqes = num_elements_per_pg;
 else if (hba->max_sqes % num_elements_per_pg)
  hba->max_sqes = (hba->max_sqes + num_elements_per_pg - 1) &
     ~(num_elements_per_pg - 1);


 num_elements_per_pg = CNIC_PAGE_SIZE / BNX2I_CQE_SIZE;
 if (hba->max_cqes < num_elements_per_pg)
  hba->max_cqes = num_elements_per_pg;
 else if (hba->max_cqes % num_elements_per_pg)
  hba->max_cqes = (hba->max_cqes + num_elements_per_pg - 1) &
     ~(num_elements_per_pg - 1);


 num_elements_per_pg = CNIC_PAGE_SIZE / BNX2I_RQ_WQE_SIZE;
 if (hba->max_rqes < num_elements_per_pg)
  hba->max_rqes = num_elements_per_pg;
 else if (hba->max_rqes % num_elements_per_pg)
  hba->max_rqes = (hba->max_rqes + num_elements_per_pg - 1) &
     ~(num_elements_per_pg - 1);
}

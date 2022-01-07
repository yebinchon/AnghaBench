
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct csio_hw {int dummy; } ;
 int SGE_INT_CAUSE1_A ;
 int SGE_INT_CAUSE2_A ;
 int SGE_INT_CAUSE3_A ;
 int csio_fatal (struct csio_hw*,char*,unsigned long long) ;
 int csio_handle_intr_status (struct csio_hw*,int ,struct intr_info*) ;
 int csio_hw_fatal_err (struct csio_hw*) ;
 scalar_t__ csio_rd_reg32 (struct csio_hw*,int ) ;
 int csio_wr_reg32 (struct csio_hw*,int ,int ) ;

__attribute__((used)) static void csio_sge_intr_handler(struct csio_hw *hw)
{
 uint64_t v;

 static struct intr_info sge_intr_info[] = {
  { 136,
    "SGE received CPL exceeding IQE size", -1, 1 },
  { 129,
    "SGE GTS CIDX increment too large", -1, 0 },
  { 135, "SGE received 0-length CPL", -1, 0 },
  { 132, "SGE doorbell dropped", -1, 0 },
  { 133 | 134,
    "SGE IQID > 1023 received CPL for FL", -1, 0 },
  { 137, "SGE DBP 3 pidx increment too large", -1,
    0 },
  { 138, "SGE DBP 2 pidx increment too large", -1,
    0 },
  { 139, "SGE DBP 1 pidx increment too large", -1,
    0 },
  { 140, "SGE DBP 0 pidx increment too large", -1,
    0 },
  { 130,
    "SGE too many priority ingress contexts", -1, 0 },
  { 131,
    "SGE too many priority egress contexts", -1, 0 },
  { 128, "SGE illegal ingress QID", -1, 0 },
  { 141, "SGE illegal egress QID", -1, 0 },
  { 0, ((void*)0), 0, 0 }
 };

 v = (uint64_t)csio_rd_reg32(hw, SGE_INT_CAUSE1_A) |
     ((uint64_t)csio_rd_reg32(hw, SGE_INT_CAUSE2_A) << 32);
 if (v) {
  csio_fatal(hw, "SGE parity error (%#llx)\n",
       (unsigned long long)v);
  csio_wr_reg32(hw, (uint32_t)(v & 0xFFFFFFFF),
      SGE_INT_CAUSE1_A);
  csio_wr_reg32(hw, (uint32_t)(v >> 32), SGE_INT_CAUSE2_A);
 }

 v |= csio_handle_intr_status(hw, SGE_INT_CAUSE3_A, sge_intr_info);

 if (csio_handle_intr_status(hw, SGE_INT_CAUSE3_A, sge_intr_info) ||
     v != 0)
  csio_hw_fatal_err(hw);
}

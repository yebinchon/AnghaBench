
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct csio_hw {int dummy; } ;






 int ULP_TX_INT_CAUSE_A ;
 scalar_t__ csio_handle_intr_status (struct csio_hw*,int ,struct intr_info*) ;
 int csio_hw_fatal_err (struct csio_hw*) ;

__attribute__((used)) static void csio_ulptx_intr_handler(struct csio_hw *hw)
{
 static struct intr_info ulptx_intr_info[] = {
  { 128, "ULPTX channel 3 PBL out of bounds", -1,
    0 },
  { 129, "ULPTX channel 2 PBL out of bounds", -1,
    0 },
  { 130, "ULPTX channel 1 PBL out of bounds", -1,
    0 },
  { 131, "ULPTX channel 0 PBL out of bounds", -1,
    0 },
  { 0xfffffff, "ULPTX parity error", -1, 1 },
  { 0, ((void*)0), 0, 0 }
 };

 if (csio_handle_intr_status(hw, ULP_TX_INT_CAUSE_A, ulptx_intr_info))
  csio_hw_fatal_err(hw);
}

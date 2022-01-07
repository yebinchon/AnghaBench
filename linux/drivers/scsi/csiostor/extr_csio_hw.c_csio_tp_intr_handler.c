
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct csio_hw {int dummy; } ;



 int TP_INT_CAUSE_A ;
 scalar_t__ csio_handle_intr_status (struct csio_hw*,int ,struct intr_info*) ;
 int csio_hw_fatal_err (struct csio_hw*) ;

__attribute__((used)) static void csio_tp_intr_handler(struct csio_hw *hw)
{
 static struct intr_info tp_intr_info[] = {
  { 0x3fffffff, "TP parity error", -1, 1 },
  { 128, "TP out of Tx pages", -1, 1 },
  { 0, ((void*)0), 0, 0 }
 };

 if (csio_handle_intr_status(hw, TP_INT_CAUSE_A, tp_intr_info))
  csio_hw_fatal_err(hw);
}

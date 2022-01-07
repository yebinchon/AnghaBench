
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct csio_hw {int dummy; } ;
 int PM_TX_INT_CAUSE_A ;

 scalar_t__ csio_handle_intr_status (struct csio_hw*,int ,struct intr_info*) ;
 int csio_hw_fatal_err (struct csio_hw*) ;

__attribute__((used)) static void csio_pmtx_intr_handler(struct csio_hw *hw)
{
 static struct intr_info pmtx_intr_info[] = {
  { 132, "PMTX channel 0 pcmd too large", -1, 1 },
  { 131, "PMTX channel 1 pcmd too large", -1, 1 },
  { 130, "PMTX channel 2 pcmd too large", -1, 1 },
  { 128, "PMTX 0-length pcmd", -1, 1 },
  { 0xffffff0, "PMTX framing error", -1, 1 },
  { 133, "PMTX oespi parity error", -1, 1 },
  { 135, "PMTX db_options parity error", -1,
    1 },
  { 134, "PMTX icspi parity error", -1, 1 },
  { 129, "PMTX c_pcmd parity error", -1, 1},
  { 0, ((void*)0), 0, 0 }
 };

 if (csio_handle_intr_status(hw, PM_TX_INT_CAUSE_A, pmtx_intr_info))
  csio_hw_fatal_err(hw);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mbox_int; } ;
struct qla_hw_data {int mbx_intr_comp; int mbx_cmd_flags; TYPE_1__ flags; } ;


 int MBX_INTERRUPT ;
 int MBX_INTR_WAIT ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int set_bit (int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void
qla2x00_handle_mbx_completion(struct qla_hw_data *ha, int status)
{
 if (test_bit(MBX_INTR_WAIT, &ha->mbx_cmd_flags) &&
     (status & MBX_INTERRUPT) && ha->flags.mbox_int) {
  set_bit(MBX_INTERRUPT, &ha->mbx_cmd_flags);
  clear_bit(MBX_INTR_WAIT, &ha->mbx_cmd_flags);
  complete(&ha->mbx_intr_comp);
 }
}

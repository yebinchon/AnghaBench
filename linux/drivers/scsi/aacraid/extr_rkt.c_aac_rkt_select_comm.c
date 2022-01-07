
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct aac_dev {TYPE_3__* scsi_host_ptr; TYPE_2__* init; } ;
struct TYPE_6__ {scalar_t__ can_queue; } ;
struct TYPE_4__ {int max_io_commands; } ;
struct TYPE_5__ {TYPE_1__ r7; } ;


 int AAC_COMM_MESSAGE ;
 scalar_t__ AAC_NUM_IO_FIB_RKT ;
 scalar_t__ AAC_NUM_MGT_FIB ;
 int aac_rx_select_comm (struct aac_dev*,int) ;
 int cpu_to_le32 (scalar_t__) ;

__attribute__((used)) static int aac_rkt_select_comm(struct aac_dev *dev, int comm)
{
 int retval;
 retval = aac_rx_select_comm(dev, comm);
 if (comm == AAC_COMM_MESSAGE) {
  if (dev->scsi_host_ptr->can_queue > AAC_NUM_IO_FIB_RKT) {
   dev->init->r7.max_io_commands =
    cpu_to_le32(AAC_NUM_IO_FIB_RKT + AAC_NUM_MGT_FIB);
   dev->scsi_host_ptr->can_queue = AAC_NUM_IO_FIB_RKT;
  }
 }
 return retval;
}

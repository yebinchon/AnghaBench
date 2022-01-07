
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int function; int intr_count; int tx_ring_count; int rx_ring_count; } ;
struct TYPE_4__ {int headerSize; int imageSize; int idString; int cookie; } ;
struct ql_reg_dump {int * ets; int ets_seg_hdr; int * nic_routing_words; int nic_routing_words_seg_hdr; int * cam_entries; int cam_entries_seg_hdr; int * intr_states; int intr_states_seg_hdr; int * nic_regs; int nic_regs_seg_hdr; TYPE_1__ misc_nic_info; int misc_nic_seg_hdr; TYPE_2__ mpi_global_header; } ;
struct ql_adapter {int func; int intr_count; int tx_ring_count; int rx_ring_count; } ;
struct mpi_coredump_segment_header {int dummy; } ;
struct mpi_coredump_global_header {int dummy; } ;


 int CAM_ENTRIES_SEG_NUM ;
 int ETS_SEG_NUM ;
 int INTR_STATES_SEG_NUM ;
 int MISC_NIC_INFO_SEG_NUM ;
 int MPI_COREDUMP_COOKIE ;
 int NIC1_CONTROL_SEG_NUM ;
 int ROUTING_WORDS_SEG_NUM ;
 int memset (TYPE_2__*,int ,int) ;
 int ql_build_coredump_seg_header (int *,int ,int,char*) ;
 int ql_get_cam_entries (struct ql_adapter*,int *) ;
 int ql_get_ets_regs (struct ql_adapter*,int *) ;
 int ql_get_intr_states (struct ql_adapter*,int *) ;
 int ql_get_routing_entries (struct ql_adapter*,int *) ;
 int ql_read32 (struct ql_adapter*,int) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static void ql_gen_reg_dump(struct ql_adapter *qdev,
       struct ql_reg_dump *mpi_coredump)
{
 int i, status;


 memset(&(mpi_coredump->mpi_global_header), 0,
  sizeof(struct mpi_coredump_global_header));
 mpi_coredump->mpi_global_header.cookie = MPI_COREDUMP_COOKIE;
 mpi_coredump->mpi_global_header.headerSize =
  sizeof(struct mpi_coredump_global_header);
 mpi_coredump->mpi_global_header.imageSize =
  sizeof(struct ql_reg_dump);
 strncpy(mpi_coredump->mpi_global_header.idString, "MPI Coredump",
  sizeof(mpi_coredump->mpi_global_header.idString));



 ql_build_coredump_seg_header(&mpi_coredump->misc_nic_seg_hdr,
    MISC_NIC_INFO_SEG_NUM,
    sizeof(struct mpi_coredump_segment_header)
    + sizeof(mpi_coredump->misc_nic_info),
    "MISC NIC INFO");
 mpi_coredump->misc_nic_info.rx_ring_count = qdev->rx_ring_count;
 mpi_coredump->misc_nic_info.tx_ring_count = qdev->tx_ring_count;
 mpi_coredump->misc_nic_info.intr_count = qdev->intr_count;
 mpi_coredump->misc_nic_info.function = qdev->func;


 ql_build_coredump_seg_header(&mpi_coredump->nic_regs_seg_hdr,
    NIC1_CONTROL_SEG_NUM,
    sizeof(struct mpi_coredump_segment_header)
    + sizeof(mpi_coredump->nic_regs),
    "NIC Registers");

 for (i = 0; i < 64; i++)
  mpi_coredump->nic_regs[i] = ql_read32(qdev, i * sizeof(u32));



 ql_build_coredump_seg_header(&mpi_coredump->intr_states_seg_hdr,
    INTR_STATES_SEG_NUM,
    sizeof(struct mpi_coredump_segment_header)
    + sizeof(mpi_coredump->intr_states),
    "INTR States");
 ql_get_intr_states(qdev, &mpi_coredump->intr_states[0]);

 ql_build_coredump_seg_header(&mpi_coredump->cam_entries_seg_hdr,
    CAM_ENTRIES_SEG_NUM,
    sizeof(struct mpi_coredump_segment_header)
    + sizeof(mpi_coredump->cam_entries),
    "CAM Entries");
 status = ql_get_cam_entries(qdev, &mpi_coredump->cam_entries[0]);
 if (status)
  return;

 ql_build_coredump_seg_header(&mpi_coredump->nic_routing_words_seg_hdr,
    ROUTING_WORDS_SEG_NUM,
    sizeof(struct mpi_coredump_segment_header)
    + sizeof(mpi_coredump->nic_routing_words),
    "Routing Words");
 status = ql_get_routing_entries(qdev,
    &mpi_coredump->nic_routing_words[0]);
 if (status)
  return;


 ql_build_coredump_seg_header(&mpi_coredump->ets_seg_hdr,
    ETS_SEG_NUM,
    sizeof(struct mpi_coredump_segment_header)
    + sizeof(mpi_coredump->ets),
    "ETS Registers");
 status = ql_get_ets_regs(qdev, &mpi_coredump->ets[0]);
 if (status)
  return;
}

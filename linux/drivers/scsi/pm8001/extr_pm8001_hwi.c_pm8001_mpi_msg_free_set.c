
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pm8001_hba_info {int iomb_size; } ;
struct outbound_queue_table {int consumer_idx; struct mpi_msg_hdr* producer_index; int pi_virt; int ci_offset; int ci_pci_bar; scalar_t__ base_virt; } ;
struct mpi_msg_hdr {int dummy; } ;


 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_IO_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_MPI_QUEUE ;
 void* cpu_to_le32 (int ) ;
 int pm8001_cw32 (struct pm8001_hba_info*,int ,int ,int) ;
 int pm8001_printk (char*,int,struct mpi_msg_hdr*,...) ;
 int pm8001_read_32 (int ) ;

u32 pm8001_mpi_msg_free_set(struct pm8001_hba_info *pm8001_ha, void *pMsg,
       struct outbound_queue_table *circularQ, u8 bc)
{
 u32 producer_index;
 struct mpi_msg_hdr *msgHeader;
 struct mpi_msg_hdr *pOutBoundMsgHeader;

 msgHeader = (struct mpi_msg_hdr *)(pMsg - sizeof(struct mpi_msg_hdr));
 pOutBoundMsgHeader = (struct mpi_msg_hdr *)(circularQ->base_virt +
    circularQ->consumer_idx * pm8001_ha->iomb_size);
 if (pOutBoundMsgHeader != msgHeader) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("consumer_idx = %d msgHeader = %p\n",
   circularQ->consumer_idx, msgHeader));


  producer_index = pm8001_read_32(circularQ->pi_virt);
  circularQ->producer_index = cpu_to_le32(producer_index);
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("consumer_idx = %d producer_index = %d"
   "msgHeader = %p\n", circularQ->consumer_idx,
   circularQ->producer_index, msgHeader));
  return 0;
 }

 circularQ->consumer_idx = (circularQ->consumer_idx + bc)
    % PM8001_MPI_QUEUE;

 pm8001_cw32(pm8001_ha, circularQ->ci_pci_bar, circularQ->ci_offset,
  circularQ->consumer_idx);

 producer_index = pm8001_read_32(circularQ->pi_virt);
 circularQ->producer_index = cpu_to_le32(producer_index);
 PM8001_IO_DBG(pm8001_ha,
  pm8001_printk(" CI=%d PI=%d\n", circularQ->consumer_idx,
  circularQ->producer_index));
 return 0;
}

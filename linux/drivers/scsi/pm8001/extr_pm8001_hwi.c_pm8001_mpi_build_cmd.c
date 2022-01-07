
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {scalar_t__ iomb_size; } ;
struct mpi_msg_hdr {int dummy; } ;
struct inbound_queue_table {int consumer_index; int producer_idx; int pi_offset; int pi_pci_bar; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int PM8001_IO_DBG (struct pm8001_hba_info*,int ) ;
 int cpu_to_le32 (int) ;
 int memcpy (void*,void*,scalar_t__) ;
 int pm8001_cw32 (struct pm8001_hba_info*,int ,int ,int ) ;
 scalar_t__ pm8001_mpi_msg_free_get (struct inbound_queue_table*,scalar_t__,void**) ;
 int pm8001_printk (char*,...) ;
 int pm8001_write_32 (void*,int ,int ) ;

int pm8001_mpi_build_cmd(struct pm8001_hba_info *pm8001_ha,
    struct inbound_queue_table *circularQ,
    u32 opCode, void *payload, u32 responseQueue)
{
 u32 Header = 0, hpriority = 0, bc = 1, category = 0x02;
 void *pMessage;

 if (pm8001_mpi_msg_free_get(circularQ, pm8001_ha->iomb_size,
  &pMessage) < 0) {
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("No free mpi buffer\n"));
  return -ENOMEM;
 }
 BUG_ON(!payload);

 memcpy(pMessage, payload, (pm8001_ha->iomb_size -
    sizeof(struct mpi_msg_hdr)));


 Header = ((1 << 31) | (hpriority << 30) | ((bc & 0x1f) << 24)
  | ((responseQueue & 0x3F) << 16)
  | ((category & 0xF) << 12) | (opCode & 0xFFF));

 pm8001_write_32((pMessage - 4), 0, cpu_to_le32(Header));

 pm8001_cw32(pm8001_ha, circularQ->pi_pci_bar,
  circularQ->pi_offset, circularQ->producer_idx);
 PM8001_IO_DBG(pm8001_ha,
  pm8001_printk("INB Q %x OPCODE:%x , UPDATED PI=%d CI=%d\n",
   responseQueue, opCode, circularQ->producer_idx,
   circularQ->consumer_index));
 return 0;
}

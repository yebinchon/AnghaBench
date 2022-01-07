
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef uintptr_t u32 ;
typedef int u16 ;
struct mpt3sas_nvme_cmd {int prp2; int prp1; } ;
struct MPT3SAS_ADAPTER {int page_size; } ;
typedef int dma_addr_t ;
typedef int __le64 ;
struct TYPE_3__ {scalar_t__ NVMe_Command; } ;
typedef TYPE_1__ Mpi26NVMeEncapsulatedRequest_t ;


 int NVME_PRP_SIZE ;
 int cpu_to_le64 (int) ;
 scalar_t__ mpt3sas_base_get_pcie_sgl (struct MPT3SAS_ADAPTER*,int ) ;
 int mpt3sas_base_get_pcie_sgl_dma (struct MPT3SAS_ADAPTER*,int ) ;

__attribute__((used)) static void
_base_build_nvme_prp(struct MPT3SAS_ADAPTER *ioc, u16 smid,
 Mpi26NVMeEncapsulatedRequest_t *nvme_encap_request,
 dma_addr_t data_out_dma, size_t data_out_sz, dma_addr_t data_in_dma,
 size_t data_in_sz)
{
 int prp_size = NVME_PRP_SIZE;
 __le64 *prp_entry, *prp1_entry, *prp2_entry;
 __le64 *prp_page;
 dma_addr_t prp_entry_dma, prp_page_dma, dma_addr;
 u32 offset, entry_len;
 u32 page_mask_result, page_mask;
 size_t length;
 struct mpt3sas_nvme_cmd *nvme_cmd =
  (void *)nvme_encap_request->NVMe_Command;





 if (!data_in_sz && !data_out_sz)
  return;
 prp1_entry = &nvme_cmd->prp1;
 prp2_entry = &nvme_cmd->prp2;
 prp_entry = prp1_entry;




 prp_page = (__le64 *)mpt3sas_base_get_pcie_sgl(ioc, smid);
 prp_page_dma = mpt3sas_base_get_pcie_sgl_dma(ioc, smid);





 page_mask = ioc->page_size - 1;
 page_mask_result = (uintptr_t)((u8 *)prp_page + prp_size) & page_mask;
 if (!page_mask_result) {

  prp_page = (__le64 *)((u8 *)prp_page + prp_size);
  prp_page_dma = prp_page_dma + prp_size;
 }





 prp_entry_dma = prp_page_dma;


 if (data_in_sz) {
  dma_addr = data_in_dma;
  length = data_in_sz;
 } else {
  dma_addr = data_out_dma;
  length = data_out_sz;
 }


 while (length) {




  page_mask_result = (prp_entry_dma + prp_size) & page_mask;
  if (!page_mask_result) {
   prp_entry_dma++;
   *prp_entry = cpu_to_le64(prp_entry_dma);
   prp_entry++;
  }


  offset = dma_addr & page_mask;
  entry_len = ioc->page_size - offset;

  if (prp_entry == prp1_entry) {




   *prp1_entry = cpu_to_le64(dma_addr);





   prp_entry = prp2_entry;
  } else if (prp_entry == prp2_entry) {





   if (length > ioc->page_size) {






    *prp2_entry = cpu_to_le64(prp_entry_dma);





    prp_entry = prp_page;
   } else {




    *prp2_entry = cpu_to_le64(dma_addr);
   }
  } else {







   *prp_entry = cpu_to_le64(dma_addr);
   prp_entry++;
   prp_entry_dma++;
  }





  dma_addr += entry_len;


  if (entry_len > length)
   length = 0;
  else
   length -= entry_len;
 }
}

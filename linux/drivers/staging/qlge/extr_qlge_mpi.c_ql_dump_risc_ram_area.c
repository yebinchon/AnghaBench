
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int pdev; } ;
typedef int dma_addr_t ;


 int EIO ;
 int memcpy (void*,char*,int) ;
 char* pci_alloc_consistent (int ,int,int *) ;
 int pci_free_consistent (int ,int,char*,int ) ;
 int ql_mb_dump_ram (struct ql_adapter*,int ,int ,int) ;

int ql_dump_risc_ram_area(struct ql_adapter *qdev, void *buf,
  u32 ram_addr, int word_count)
{
 int status;
 char *my_buf;
 dma_addr_t buf_dma;

 my_buf = pci_alloc_consistent(qdev->pdev, word_count * sizeof(u32),
     &buf_dma);
 if (!my_buf)
  return -EIO;

 status = ql_mb_dump_ram(qdev, buf_dma, ram_addr, word_count);
 if (!status)
  memcpy(buf, my_buf, word_count * sizeof(u32));

 pci_free_consistent(qdev->pdev, word_count * sizeof(u32), my_buf,
    buf_dma);
 return status;
}

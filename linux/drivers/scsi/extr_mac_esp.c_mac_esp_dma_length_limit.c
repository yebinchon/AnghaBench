
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esp {int dummy; } ;



__attribute__((used)) static u32 mac_esp_dma_length_limit(struct esp *esp, u32 dma_addr, u32 dma_len)
{
 return dma_len > 0xFFFF ? 0xFFFF : dma_len;
}
